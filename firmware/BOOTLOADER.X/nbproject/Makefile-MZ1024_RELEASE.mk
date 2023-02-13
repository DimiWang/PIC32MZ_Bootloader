#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-MZ1024_RELEASE.mk)" "nbproject/Makefile-local-MZ1024_RELEASE.mk"
include nbproject/Makefile-local-MZ1024_RELEASE.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=MZ1024_RELEASE
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/application/bootloader.c ../src/application/flash_mem.c ../src/board/board.c ../src/driver/gpio/gpio.c ../src/driver/nvmem/nvm.c ../src/driver/systmr/systmr.c ../src/driver/usart/usart.c ../src/driver/wdt/wdt.c ../src/modules/device_config/device_config.c ../src/system/debug/debug.c ../src/system/system.c ../src/system/system_exceptions.c ../src/system/system_init.c ../src/system/system_time.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/801483606/bootloader.o ${OBJECTDIR}/_ext/801483606/flash_mem.o ${OBJECTDIR}/_ext/1537666708/board.o ${OBJECTDIR}/_ext/455916380/gpio.o ${OBJECTDIR}/_ext/1255152928/nvm.o ${OBJECTDIR}/_ext/401144697/systmr.o ${OBJECTDIR}/_ext/1261517080/usart.o ${OBJECTDIR}/_ext/1509298662/wdt.o ${OBJECTDIR}/_ext/1727528777/device_config.o ${OBJECTDIR}/_ext/700139821/debug.o ${OBJECTDIR}/_ext/73441385/system.o ${OBJECTDIR}/_ext/73441385/system_exceptions.o ${OBJECTDIR}/_ext/73441385/system_init.o ${OBJECTDIR}/_ext/73441385/system_time.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/801483606/bootloader.o.d ${OBJECTDIR}/_ext/801483606/flash_mem.o.d ${OBJECTDIR}/_ext/1537666708/board.o.d ${OBJECTDIR}/_ext/455916380/gpio.o.d ${OBJECTDIR}/_ext/1255152928/nvm.o.d ${OBJECTDIR}/_ext/401144697/systmr.o.d ${OBJECTDIR}/_ext/1261517080/usart.o.d ${OBJECTDIR}/_ext/1509298662/wdt.o.d ${OBJECTDIR}/_ext/1727528777/device_config.o.d ${OBJECTDIR}/_ext/700139821/debug.o.d ${OBJECTDIR}/_ext/73441385/system.o.d ${OBJECTDIR}/_ext/73441385/system_exceptions.o.d ${OBJECTDIR}/_ext/73441385/system_init.o.d ${OBJECTDIR}/_ext/73441385/system_time.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/801483606/bootloader.o ${OBJECTDIR}/_ext/801483606/flash_mem.o ${OBJECTDIR}/_ext/1537666708/board.o ${OBJECTDIR}/_ext/455916380/gpio.o ${OBJECTDIR}/_ext/1255152928/nvm.o ${OBJECTDIR}/_ext/401144697/systmr.o ${OBJECTDIR}/_ext/1261517080/usart.o ${OBJECTDIR}/_ext/1509298662/wdt.o ${OBJECTDIR}/_ext/1727528777/device_config.o ${OBJECTDIR}/_ext/700139821/debug.o ${OBJECTDIR}/_ext/73441385/system.o ${OBJECTDIR}/_ext/73441385/system_exceptions.o ${OBJECTDIR}/_ext/73441385/system_init.o ${OBJECTDIR}/_ext/73441385/system_time.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/application/bootloader.c ../src/application/flash_mem.c ../src/board/board.c ../src/driver/gpio/gpio.c ../src/driver/nvmem/nvm.c ../src/driver/systmr/systmr.c ../src/driver/usart/usart.c ../src/driver/wdt/wdt.c ../src/modules/device_config/device_config.c ../src/system/debug/debug.c ../src/system/system.c ../src/system/system_exceptions.c ../src/system/system_init.c ../src/system/system_time.c ../src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-MZ1024_RELEASE.mk dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1024EFH100
MP_LINKER_FILE_OPTION=,--script="..\bl_mz1024.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/801483606/bootloader.o: ../src/application/bootloader.c  .generated_files/flags/MZ1024_RELEASE/8626beba2c9ba92928515d22ecc57e3222291442 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/bootloader.o.d" -o ${OBJECTDIR}/_ext/801483606/bootloader.o ../src/application/bootloader.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/801483606/flash_mem.o: ../src/application/flash_mem.c  .generated_files/flags/MZ1024_RELEASE/6e5de67a6dbdce6bf2cce55e793c29a4947156f7 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/flash_mem.o.d" -o ${OBJECTDIR}/_ext/801483606/flash_mem.o ../src/application/flash_mem.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/MZ1024_RELEASE/d6c0ae1613ca3c9f1630e9ca12a500ce1f387faf .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/455916380/gpio.o: ../src/driver/gpio/gpio.c  .generated_files/flags/MZ1024_RELEASE/69b108277e3f212c649233987844a21616b37a86 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/455916380" 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/455916380/gpio.o.d" -o ${OBJECTDIR}/_ext/455916380/gpio.o ../src/driver/gpio/gpio.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1255152928/nvm.o: ../src/driver/nvmem/nvm.c  .generated_files/flags/MZ1024_RELEASE/c6876408e56b7309f65389e8320f7064a1ce7e9 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1255152928" 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1255152928/nvm.o.d" -o ${OBJECTDIR}/_ext/1255152928/nvm.o ../src/driver/nvmem/nvm.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/401144697/systmr.o: ../src/driver/systmr/systmr.c  .generated_files/flags/MZ1024_RELEASE/a1e7151f1422025ce1e494f265f988e6ece1033c .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/401144697" 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/401144697/systmr.o.d" -o ${OBJECTDIR}/_ext/401144697/systmr.o ../src/driver/systmr/systmr.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261517080/usart.o: ../src/driver/usart/usart.c  .generated_files/flags/MZ1024_RELEASE/cc97e8596d9fc10e79d0198dcb497e7f5d20dd30 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1261517080" 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1261517080/usart.o.d" -o ${OBJECTDIR}/_ext/1261517080/usart.o ../src/driver/usart/usart.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1509298662/wdt.o: ../src/driver/wdt/wdt.c  .generated_files/flags/MZ1024_RELEASE/5f25eb6a0031c656004a246c18f1f03eba661ec .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1509298662" 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1509298662/wdt.o.d" -o ${OBJECTDIR}/_ext/1509298662/wdt.o ../src/driver/wdt/wdt.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727528777/device_config.o: ../src/modules/device_config/device_config.c  .generated_files/flags/MZ1024_RELEASE/1cd694b5d61f865e36e9e7ced1e5a9656c4419a9 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1727528777" 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1727528777/device_config.o.d" -o ${OBJECTDIR}/_ext/1727528777/device_config.o ../src/modules/device_config/device_config.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700139821/debug.o: ../src/system/debug/debug.c  .generated_files/flags/MZ1024_RELEASE/816b00adbeb1ed979a8d752f57b0e4cbbfa8ca61 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/700139821" 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/700139821/debug.o.d" -o ${OBJECTDIR}/_ext/700139821/debug.o ../src/system/debug/debug.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system.o: ../src/system/system.c  .generated_files/flags/MZ1024_RELEASE/c51e9b2d25d136f3d16f266a6073d717a8fe1674 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system.o.d" -o ${OBJECTDIR}/_ext/73441385/system.o ../src/system/system.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_exceptions.o: ../src/system/system_exceptions.c  .generated_files/flags/MZ1024_RELEASE/db836b03f6132a9e9b6510f38d85b6842b8e685a .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/73441385/system_exceptions.o ../src/system/system_exceptions.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_init.o: ../src/system/system_init.c  .generated_files/flags/MZ1024_RELEASE/adb660de8a617133d77bbfa822ff3f7f766e684d .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_init.o.d" -o ${OBJECTDIR}/_ext/73441385/system_init.o ../src/system/system_init.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_time.o: ../src/system/system_time.c  .generated_files/flags/MZ1024_RELEASE/beac9d3dda08a91b74845635f499ba84d6d1d007 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_time.o.d" -o ${OBJECTDIR}/_ext/73441385/system_time.o ../src/system/system_time.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/MZ1024_RELEASE/281eca90f897c3f3e3b8336e9c363802679ba57c .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/801483606/bootloader.o: ../src/application/bootloader.c  .generated_files/flags/MZ1024_RELEASE/2f7c114aea1482a6de9d00e9de6c32b4124da939 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/bootloader.o.d" -o ${OBJECTDIR}/_ext/801483606/bootloader.o ../src/application/bootloader.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/801483606/flash_mem.o: ../src/application/flash_mem.c  .generated_files/flags/MZ1024_RELEASE/bd3c3da77b3805456ea076d2cf3c444dc2899e02 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/flash_mem.o.d" -o ${OBJECTDIR}/_ext/801483606/flash_mem.o ../src/application/flash_mem.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/MZ1024_RELEASE/63b8db07dac09d4e6426abec042ca19e3369be99 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/455916380/gpio.o: ../src/driver/gpio/gpio.c  .generated_files/flags/MZ1024_RELEASE/8501a3518e35722a36ead487b562e3d1b6c8901 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/455916380" 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/455916380/gpio.o.d" -o ${OBJECTDIR}/_ext/455916380/gpio.o ../src/driver/gpio/gpio.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1255152928/nvm.o: ../src/driver/nvmem/nvm.c  .generated_files/flags/MZ1024_RELEASE/44287dc1da4588ba3445ad3de7fb2f670ceed874 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1255152928" 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1255152928/nvm.o.d" -o ${OBJECTDIR}/_ext/1255152928/nvm.o ../src/driver/nvmem/nvm.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/401144697/systmr.o: ../src/driver/systmr/systmr.c  .generated_files/flags/MZ1024_RELEASE/24d17d6e6349a017231b9787d24ee881947497fc .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/401144697" 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/401144697/systmr.o.d" -o ${OBJECTDIR}/_ext/401144697/systmr.o ../src/driver/systmr/systmr.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261517080/usart.o: ../src/driver/usart/usart.c  .generated_files/flags/MZ1024_RELEASE/afa79b99d555739c77a4b9b37820bb75f843767f .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1261517080" 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1261517080/usart.o.d" -o ${OBJECTDIR}/_ext/1261517080/usart.o ../src/driver/usart/usart.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1509298662/wdt.o: ../src/driver/wdt/wdt.c  .generated_files/flags/MZ1024_RELEASE/73e10bd198e08c6d07b49be01a23daf1c038d76b .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1509298662" 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1509298662/wdt.o.d" -o ${OBJECTDIR}/_ext/1509298662/wdt.o ../src/driver/wdt/wdt.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727528777/device_config.o: ../src/modules/device_config/device_config.c  .generated_files/flags/MZ1024_RELEASE/9c15b11a4f60cc814f442d5031da27d6fab046da .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1727528777" 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1727528777/device_config.o.d" -o ${OBJECTDIR}/_ext/1727528777/device_config.o ../src/modules/device_config/device_config.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700139821/debug.o: ../src/system/debug/debug.c  .generated_files/flags/MZ1024_RELEASE/5e208945dbca9cdb2cfeedc818637bf1178b1107 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/700139821" 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/700139821/debug.o.d" -o ${OBJECTDIR}/_ext/700139821/debug.o ../src/system/debug/debug.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system.o: ../src/system/system.c  .generated_files/flags/MZ1024_RELEASE/f0d407dd44240df566c222365cd305c3e57d1c11 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system.o.d" -o ${OBJECTDIR}/_ext/73441385/system.o ../src/system/system.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_exceptions.o: ../src/system/system_exceptions.c  .generated_files/flags/MZ1024_RELEASE/6476e3ba851bca1deabc380dc8ec60cc295e35e6 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/73441385/system_exceptions.o ../src/system/system_exceptions.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_init.o: ../src/system/system_init.c  .generated_files/flags/MZ1024_RELEASE/475487d41b5e4d102130b36080d659752e689cc7 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_init.o.d" -o ${OBJECTDIR}/_ext/73441385/system_init.o ../src/system/system_init.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_time.o: ../src/system/system_time.c  .generated_files/flags/MZ1024_RELEASE/71ee89db95e79c2ca874cc80b313b5e52c99d1f2 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_time.o.d" -o ${OBJECTDIR}/_ext/73441385/system_time.o ../src/system/system_time.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/MZ1024_RELEASE/69ccf1ceb1cf7eb096190b8dbe0142920cbf6f32 .generated_files/flags/MZ1024_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../bl_mz1024.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../bl_mz1024.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_MZ1024_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo Normalizing hex file
	@"C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v5.50/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.hex -odist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.hex

endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/MZ1024_RELEASE
	${RM} -r dist/MZ1024_RELEASE

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
