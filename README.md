# PIC32MZ UART Bootloader (+ Live Update)

This is a UART bootloader for **PIC32MZ EF** parts, built with MPLAB XC32. It uses an AN1388-style serial protocol: SOH/EOT/DLE framing, CRC16-XMODEM and Intel-HEX records. The host side is the bundled `pc_app/PIC32UBL` Windows tool.

The bootloader lives entirely in **boot flash** (lower boot alias) and writes the application into program flash at `0x9D000000`. An optional *Live Update* mode stages a new image in a backup slot and copies it over the main slot on the next boot.

## Supported parts

| Device | MPLAB X conf | Linker script | Status |
|---|---|---|---|
| PIC32MZ1024EFH100 | `MZ1024_RELEASE` | `firmware/bl_mz1024.ld` | Builds with XC32 v4.60 (project file was created with v4.21) |
| PIC32MX (256 KB) | `MX256_RELEASE` | `bl_mx256.ld` (**missing from repo**) | Not buildable. The conf also still targets PIC32MZ1024EFH100 |

Other MZ EF parts with 1 MB of flash should work after changing `-mprocessor`. Smaller parts need `APP_SIZE_BYTES` and the linker scripts adjusted.

## Board / clock assumptions (`firmware/src/board`)

| Item | Value |
|---|---|
| System clock | 250 MHz: POSC HS (20 MHz assumed) ÷2 ×50 ÷2 (SPLL) |
| Comms UART | UART3 at 115200 8N1. TX = RG1, RX = RG0 |
| LEDs | RA0 (LED1) and RG9 (LED2), active low. RG9 blinks while copying from backup |
| Debug pin | RB2 |
| Watchdog | Enabled in config bits (FWDTEN=ON, PS32768). The bootloader services it |
| Debugger | ICSP PGEC1/PGED1, JTAG off |

If your board differs (crystal, UART, pins), edit `board.c` / `board.h` before building.

## Memory map

### Boot flash, bootloader (`firmware/bl_mz1024.ld`)

| Region | Address | Size | Contents |
|---|---|---|---|
| Reset / startup | `0xBFC00000` | 0x480 | `_reset`, BEV vector (0xBFC00380), debug vector (0xBFC00480) |
| `sw_version` | `0xBFC00490` | 4 B | Bootloader version word (`_VERSION_` in `version.h`) |
| `kseg1_boot_mem_4B0` | `0xBFC004B0` | to 0xBFC01000 | Startup code overflow |
| Ebase / vectors | `0x9FC01000` | n/a | `_ebase_address`, exception vectors |
| `kseg0_program_mem` | `0x9FC01000` | 0xEF00 | Bootloader code (about 15.6 KB used, 25%) |
| Config words | `0xBFC0FF40`–`0xBFC0FFFC` | n/a | DEVCFG0..3, DEVCP, DEVSIGN, `BFxSEQ` (TSEQ=0x0000, CSEQ=0xFFFF) |
| `dev_config` | `0xBFC20000` (upper boot alias) | 1 page | `Config_t` {crc, app_crc_1, app_crc_2}. Erased and rewritten at runtime |

### Program flash, application

| Region | Address | Size | Notes |
|---|---|---|---|
| Main app (MEM1) | `0x9D000000` | 512 KB (`APP_SIZE_BYTES`) | Entry point: the bootloader does `j 0x9D000000` |
| App `sw_version` | `0x9D000490` | 4 B | App version, read by Live Update |
| App code | `0x9D001000` | 0x7F000 | App `_ebase_address = 0x9D001000` |
| Backup app (MEM2) | `0x9D080000` | 512 KB | Live Update staging area |
| RAM | `0x80000000` | 512 KB | Fully available to the app (the bootloader does not reserve RAM) |

Flash geometry on MZ EF: **page = 16 KB** (`PAGE_SIZE` 4096 words), **row = 2 KB**. Erase granularity is 16 KB.

## Build

### MPLAB X
Open `firmware/BOOTLOADER.X`, select `MZ1024_RELEASE` and build. The repo contains committed `build/` / `dist/` output. Do a Clean & Build so you don't flash a stale image.

### Command line (verified with XC32 v4.60)
```sh
cd firmware
XC=/opt/microchip/xc32/v4.60/bin
INC=$(find src -type d | sed 's/^/-I/')
for f in $(find src -name '*.c'); do
  $XC/xc32-gcc -mprocessor=32MZ1024EFH100 -O1 -ffunction-sections $INC -c $f -o out/$(basename $f .c).o
done
$XC/xc32-gcc -mprocessor=32MZ1024EFH100 -o out/bl.elf out/*.o \
  -Wl,--script=bl_mz1024.ld,--gc-sections,--defsym=_min_heap_size=0
$XC/xc32-bin2hex out/bl.elf
```
Result: 0 errors and 0 warnings. Program memory used is 0x3CF8 bytes (25% of boot flash).

### Build-time options (`firmware/src/system_config.h`)
| Define | Default | Effect |
|---|---|---|
| `USE_LIVEUPDATE` | off | Enables backup-slot staging and copy-on-boot |
| `DEBUG_VER` | off | Debug prints |
| `USE_DEV_CONFIG` | 0 | Device-config handling |
| `APP_SIZE_BYTES` | 0x80000 | Size of each app slot |

## Flashing

1. Program the bootloader hex with a PICkit/ICD/MPLAB IPE. It contains the config words.
2. Do **not** program an application hex directly over the bootloader with a programmer unless you mean to. See below.
3. After that, load applications over UART with `pc_app/PIC32UBL.exe` (115200 baud, COM port of UART3).

## Boot flow

1. `SYS_Initialize()` and `BOOTLOADER_Initialize()` run (config loaded from `0xBFC20000`).
2. If **no app** is present (word at `0x9D000000` is `0xFFFFFFFF`), **or** the host sends `0xAA 0x55` within about 250 ms (5 × 50 ms), the bootloader enters UART update mode.
3. Otherwise (with `USE_LIVEUPDATE`), if the backup slot holds a newer valid image, it is copied to MEM1 page by page.
4. Jump to `0x9D000000`.

## Protocol

Frame: `SOH <payload with DLE-escaping> <CRC16 lo> <CRC16 hi> EOT`.
- `SOH`=0x01, `EOT`=0x04, `DLE`=0x10. Escape any of these inside the payload with `DLE`.
- CRC16 is CCITT/XMODEM (poly 0x1021, init 0), calculated over the unescaped payload.
- The maximum unescaped frame is 512 bytes.

| Cmd | Name | Request | Response |
|---|---|---|---|
| 0x01 | READ_BOOT_INFO | none | `01 major minor` |
| 0x02 | ERASE_FLASH | none | `02`. Erases the 512 KB main slot |
| 0x03 | PROGRAM_FLASH | One or more Intel-HEX records (binary) | `03` on success |
| 0x04 | READ_CRC | `addr[4] len[4]` (LE) | `04 crc_lo crc_hi` |
| 0x05 | JMP_TO_APP | none | `05`, stores the app CRC to `dev_config`, then jumps |

Record types 00 (data), 01 (EOF), 02 (ext. segment) and 04 (ext. linear) are handled. Only data that falls inside `0x9D000000`–`0x9D0FFFFF` (main + backup slots) is written. Anything else, such as config words or boot flash, is **silently skipped**.

`PC_protocol.pdf` has the full host-side description.

## Linking an application

Use `test_app_hex/app_mz.ld` as a template (example: `test_app_hex/main_example.c`):

- `_RESET_ADDR = 0x9D000000`, `_ebase_address = 0x9D001000`, code in `kseg0_program_mem` at `0x9D001000`, size 0x7F000.
- Put a version word in `.sw_version` (`0x9D000490`) if you use Live Update.
- The example places a small `j 0x9D000000` stub in `.start_BFC00000`, so the app can also run standalone without the bootloader during debugging. The bootloader ignores that record when it loads the app.
- Don't define config words in the app. They come from the bootloader and are not written over UART.
- Example images: `test_app_hex/app_ver1.hex` and `app_ver2.hex`.

## Known issues

See the review PR for the `PIC32MX` branch. In short:
- Several protocol and config-CRC bugs (rx buffer overflow, inverted JMP_TO_APP result, version byte, app version offset) are fixed on `fix/next-review`.
- Config is stored in the *upper boot alias* (`0xBFC20000`), which maps to the inactive boot panel. Check this on your BFxSEQ setup.
- A config-unlock password is hardcoded in `system_config.h`. Change it per product.
- READ_CRC reads any host-supplied address range, so the host can read back the bootloader.

## Hardware checks

- [ ] Crystal frequency matches the 20 MHz/250 MHz PLL settings; UART baud rate is correct.
- [ ] Without an app: the bootloader stays in update mode and `READ_BOOT_INFO` answers.
- [ ] Erase, program `app_ver1.hex`, JMP: the app runs and `READ_CRC` matches the host.
- [ ] Reset with `0xAA 0x55` re-enters the bootloader; without it, the app starts.
- [ ] `dev_config` at `0xBFC20000` survives a power cycle and does not get rewritten every boot.
- [ ] The watchdog does not reset during a full 512 KB erase/program cycle.
- [ ] (Live Update) Image staged in `0x9D080000` is copied to MEM1 and the version check works.
