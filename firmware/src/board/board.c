#include "board.h"
#include <xc.h>
#include "usart.h"
#include "gpio.h"
#include "nvm.h"
#include "systmr.h"


/*** DEVCFG0 ***/

#pragma config DEBUG = OFF
#pragma config JTAGEN = OFF
#pragma config ICESEL = ICS_PGx1
#pragma config TRCEN = OFF
#pragma config BOOTISA = MIPS32
#pragma config FECCCON = OFF_UNLOCKED
#pragma config FSLEEP = OFF
#pragma config DBGPER = PG_ALL
#pragma config SMCLR = MCLR_NORM
#pragma config SOSCGAIN = GAIN_2X
#pragma config SOSCBOOST = ON
#pragma config POSCGAIN = GAIN_2X
#pragma config POSCBOOST = ON
#pragma config EJTAGBEN = NORMAL
#pragma config CP = OFF

/*** DEVCFG1 ***/

#pragma config FNOSC = SPLL
#pragma config DMTINTV = WIN_127_128
#pragma config FSOSCEN = OFF
#pragma config IESO = OFF
#pragma config POSCMOD = HS
#pragma config OSCIOFNC = OFF
#pragma config FCKSM = CSECME
#pragma config WDTPS = PS32768
#pragma config WDTSPGM = STOP
#pragma config FWDTEN = ON
#pragma config WINDIS = NORMAL
#pragma config FWDTWINSZ = WINSZ_25
#pragma config DMTCNT = DMT31
#pragma config FDMTEN = OFF
/*** DEVCFG2 ***/

#pragma config FPLLIDIV = DIV_2
#pragma config FPLLRNG = RANGE_5_10_MHZ
#pragma config FPLLICLK = PLL_POSC
#pragma config FPLLMULT = MUL_50
#pragma config FPLLODIV = DIV_2
#pragma config UPLLFSEL = FREQ_24MHZ
/*** DEVCFG3 ***/

#pragma config USERID = 0xffff
#pragma config FMIIEN = OFF
#pragma config FETHIO = OFF
#pragma config PGL1WAY = OFF
#pragma config PMDL1WAY = OFF
#pragma config IOL1WAY = OFF
#pragma config FUSBIDIO = OFF

/*** BF1SEQ0 ***/

#pragma config TSEQ = 0x0000
#pragma config CSEQ = 0xffff


void BOARD_init()
{

  // enable GPIO
  gpio_enable(GPIO('G', 1), GPIO_CUSTOM_OUTPUT(OUTPUT_FUNC_U3TX) | GPIO_IN);
  gpio_enable(GPIO('G', 0), GPIO_CUSTOM_INPUT(INPUT_FUNC_U3RX) | GPIO_IN);
  uart_enable(COMM_UART, 115200);

  // enable GPIO
  gpio_enable(GPIO('G', 9), GPIO_OUT);
  gpio_enable(GPIO('A', 0), GPIO_OUT);
  gpio_set(GPIO('G', 9), 1);
  gpio_set(GPIO('A', 0), 1);

  // GPIO for debug
  gpio_enable(GPIO('B', 2), GPIO_IN | CN_PULLUP);

#ifdef DEBUG_VER
  gpio_enable(GPIO('B', 4), GPIO_IN | CN_PULLUP);
#endif

}