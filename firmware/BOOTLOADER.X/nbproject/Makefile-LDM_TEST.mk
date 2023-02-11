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
ifeq "$(wildcard nbproject/Makefile-local-LDM_TEST.mk)" "nbproject/Makefile-local-LDM_TEST.mk"
include nbproject/Makefile-local-LDM_TEST.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LDM_TEST
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
	${MAKE}  -f nbproject/Makefile-LDM_TEST.mk dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1024EFH100
MP_LINKER_FILE_OPTION=,--script="..\btl_mz.ld"
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
${OBJECTDIR}/_ext/801483606/bootloader.o: ../src/application/bootloader.c  .generated_files/flags/LDM_TEST/781a81564b71d4e543daf86194c8af49f21abe51 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/bootloader.o.d" -o ${OBJECTDIR}/_ext/801483606/bootloader.o ../src/application/bootloader.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/801483606/flash_mem.o: ../src/application/flash_mem.c  .generated_files/flags/LDM_TEST/85f22c2112b6735c8803cf0332f3f0e170823015 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/flash_mem.o.d" -o ${OBJECTDIR}/_ext/801483606/flash_mem.o ../src/application/flash_mem.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/LDM_TEST/2e588b37903cf7a6a07f1efa9965c6ca51684e02 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/455916380/gpio.o: ../src/driver/gpio/gpio.c  .generated_files/flags/LDM_TEST/9e3fdc1ce67af21245068f9dae3a413974535ef7 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/455916380" 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/455916380/gpio.o.d" -o ${OBJECTDIR}/_ext/455916380/gpio.o ../src/driver/gpio/gpio.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1255152928/nvm.o: ../src/driver/nvmem/nvm.c  .generated_files/flags/LDM_TEST/7cd2a75f49244d62421ea34f5d8eca2a2a43b881 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1255152928" 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1255152928/nvm.o.d" -o ${OBJECTDIR}/_ext/1255152928/nvm.o ../src/driver/nvmem/nvm.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/401144697/systmr.o: ../src/driver/systmr/systmr.c  .generated_files/flags/LDM_TEST/fa0b313a91303c9873f03eb0d661766a5d1c07b4 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/401144697" 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/401144697/systmr.o.d" -o ${OBJECTDIR}/_ext/401144697/systmr.o ../src/driver/systmr/systmr.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261517080/usart.o: ../src/driver/usart/usart.c  .generated_files/flags/LDM_TEST/27f81a89bd56bdf25f625adab73af292cff39dd8 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1261517080" 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1261517080/usart.o.d" -o ${OBJECTDIR}/_ext/1261517080/usart.o ../src/driver/usart/usart.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1509298662/wdt.o: ../src/driver/wdt/wdt.c  .generated_files/flags/LDM_TEST/736a2f87c22db61b72f348cb49334dbb88b75efb .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1509298662" 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1509298662/wdt.o.d" -o ${OBJECTDIR}/_ext/1509298662/wdt.o ../src/driver/wdt/wdt.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727528777/device_config.o: ../src/modules/device_config/device_config.c  .generated_files/flags/LDM_TEST/23b773f527f0bae906601b445fe7f25ae09e4178 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1727528777" 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1727528777/device_config.o.d" -o ${OBJECTDIR}/_ext/1727528777/device_config.o ../src/modules/device_config/device_config.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700139821/debug.o: ../src/system/debug/debug.c  .generated_files/flags/LDM_TEST/a1033814d2e584c5b4d479de5d11b2e4814b77bb .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/700139821" 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/700139821/debug.o.d" -o ${OBJECTDIR}/_ext/700139821/debug.o ../src/system/debug/debug.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system.o: ../src/system/system.c  .generated_files/flags/LDM_TEST/442db272e360b1cfd469720c11502154afd0bcd3 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system.o.d" -o ${OBJECTDIR}/_ext/73441385/system.o ../src/system/system.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_exceptions.o: ../src/system/system_exceptions.c  .generated_files/flags/LDM_TEST/4dcd1043feaf86c049021f91403ae6c3c18e8398 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/73441385/system_exceptions.o ../src/system/system_exceptions.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_init.o: ../src/system/system_init.c  .generated_files/flags/LDM_TEST/f39a21ead278928b7e6cf12c63301fec34ee438f .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_init.o.d" -o ${OBJECTDIR}/_ext/73441385/system_init.o ../src/system/system_init.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_time.o: ../src/system/system_time.c  .generated_files/flags/LDM_TEST/506de38d9a8110e6c3de301b1f856a5beaf0da6f .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_time.o.d" -o ${OBJECTDIR}/_ext/73441385/system_time.o ../src/system/system_time.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/LDM_TEST/3c07a42366de7dfcc96ce0cffbe7eb47092c2bc9 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/801483606/bootloader.o: ../src/application/bootloader.c  .generated_files/flags/LDM_TEST/899e15cfda65b90d0d3b4aa2969eac22f14bd806 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/bootloader.o.d" -o ${OBJECTDIR}/_ext/801483606/bootloader.o ../src/application/bootloader.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/801483606/flash_mem.o: ../src/application/flash_mem.c  .generated_files/flags/LDM_TEST/1241a1a05c52891e261a7aff0294a678a9ebe96b .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/flash_mem.o.d" -o ${OBJECTDIR}/_ext/801483606/flash_mem.o ../src/application/flash_mem.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/LDM_TEST/1e0e13e22e14237488230967de3521c1128ccbbc .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/455916380/gpio.o: ../src/driver/gpio/gpio.c  .generated_files/flags/LDM_TEST/6fd10f87745eb4612edafed160bd2a2e6d6a6a2e .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/455916380" 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/455916380/gpio.o.d" -o ${OBJECTDIR}/_ext/455916380/gpio.o ../src/driver/gpio/gpio.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1255152928/nvm.o: ../src/driver/nvmem/nvm.c  .generated_files/flags/LDM_TEST/53028daa897b1223b0ae1966f76e41db20a20ce4 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1255152928" 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1255152928/nvm.o.d" -o ${OBJECTDIR}/_ext/1255152928/nvm.o ../src/driver/nvmem/nvm.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/401144697/systmr.o: ../src/driver/systmr/systmr.c  .generated_files/flags/LDM_TEST/1b29d2a66c48db1100577700933aec2d16be9a91 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/401144697" 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/401144697/systmr.o.d" -o ${OBJECTDIR}/_ext/401144697/systmr.o ../src/driver/systmr/systmr.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261517080/usart.o: ../src/driver/usart/usart.c  .generated_files/flags/LDM_TEST/fe899a7b75c9db69ef251d49e809bd831f9628bc .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1261517080" 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1261517080/usart.o.d" -o ${OBJECTDIR}/_ext/1261517080/usart.o ../src/driver/usart/usart.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1509298662/wdt.o: ../src/driver/wdt/wdt.c  .generated_files/flags/LDM_TEST/188050a560142e1f176b513b8f314f0c92ba6b0f .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1509298662" 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1509298662/wdt.o.d" -o ${OBJECTDIR}/_ext/1509298662/wdt.o ../src/driver/wdt/wdt.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727528777/device_config.o: ../src/modules/device_config/device_config.c  .generated_files/flags/LDM_TEST/58a31801b9700d626fae8d28bc60ce0f745b9f9b .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1727528777" 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1727528777/device_config.o.d" -o ${OBJECTDIR}/_ext/1727528777/device_config.o ../src/modules/device_config/device_config.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700139821/debug.o: ../src/system/debug/debug.c  .generated_files/flags/LDM_TEST/728893d3a69124d7a1e30cef9d8d459a0eba3464 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/700139821" 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/700139821/debug.o.d" -o ${OBJECTDIR}/_ext/700139821/debug.o ../src/system/debug/debug.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system.o: ../src/system/system.c  .generated_files/flags/LDM_TEST/269f6ee8e1f71791c2ec77446d4f0314b3a3cddc .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system.o.d" -o ${OBJECTDIR}/_ext/73441385/system.o ../src/system/system.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_exceptions.o: ../src/system/system_exceptions.c  .generated_files/flags/LDM_TEST/4fd1a06190f2fcfc287262cd8838759afa558535 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/73441385/system_exceptions.o ../src/system/system_exceptions.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_init.o: ../src/system/system_init.c  .generated_files/flags/LDM_TEST/4c879fc77501eb599b12328dc909d9dcd8d06d4e .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_init.o.d" -o ${OBJECTDIR}/_ext/73441385/system_init.o ../src/system/system_init.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_time.o: ../src/system/system_time.c  .generated_files/flags/LDM_TEST/af8d45495e54c4419d94613595cac93b1265183 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_time.o.d" -o ${OBJECTDIR}/_ext/73441385/system_time.o ../src/system/system_time.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/LDM_TEST/5fca2f3c4d6a34167c3da98f1459cfcff37e2115 .generated_files/flags/LDM_TEST/fff71d1da6c0dd2ccd3387cc51b6c8c18586c5fd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../btl_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../btl_mz.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LDM_TEST=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
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
	${RM} -r build/LDM_TEST
	${RM} -r dist/LDM_TEST

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
