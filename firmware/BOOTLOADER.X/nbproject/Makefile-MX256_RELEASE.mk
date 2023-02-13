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
ifeq "$(wildcard nbproject/Makefile-local-MX256_RELEASE.mk)" "nbproject/Makefile-local-MX256_RELEASE.mk"
include nbproject/Makefile-local-MX256_RELEASE.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=MX256_RELEASE
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
	${MAKE}  -f nbproject/Makefile-MX256_RELEASE.mk dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1024EFH100
MP_LINKER_FILE_OPTION=
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
${OBJECTDIR}/_ext/801483606/bootloader.o: ../src/application/bootloader.c  .generated_files/flags/MX256_RELEASE/94b595a25794c1937fc828df983298bbe9672f6 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/bootloader.o.d" -o ${OBJECTDIR}/_ext/801483606/bootloader.o ../src/application/bootloader.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/801483606/flash_mem.o: ../src/application/flash_mem.c  .generated_files/flags/MX256_RELEASE/b107b7eb02f11c2e93bfa64723d1bfdf45b1f53d .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/flash_mem.o.d" -o ${OBJECTDIR}/_ext/801483606/flash_mem.o ../src/application/flash_mem.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/MX256_RELEASE/9b4f80c63deb24bc8abc090d8b25a4087a3e2dfb .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/455916380/gpio.o: ../src/driver/gpio/gpio.c  .generated_files/flags/MX256_RELEASE/b772be3f75b2c22aaffdf1a8d500a6cd20f79f21 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/455916380" 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/455916380/gpio.o.d" -o ${OBJECTDIR}/_ext/455916380/gpio.o ../src/driver/gpio/gpio.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1255152928/nvm.o: ../src/driver/nvmem/nvm.c  .generated_files/flags/MX256_RELEASE/d57a3f9029216e05df9c6758f2697d1424a8393f .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1255152928" 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1255152928/nvm.o.d" -o ${OBJECTDIR}/_ext/1255152928/nvm.o ../src/driver/nvmem/nvm.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/401144697/systmr.o: ../src/driver/systmr/systmr.c  .generated_files/flags/MX256_RELEASE/94f09441109e86e22fc068fde4067f449e13d0f9 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/401144697" 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/401144697/systmr.o.d" -o ${OBJECTDIR}/_ext/401144697/systmr.o ../src/driver/systmr/systmr.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261517080/usart.o: ../src/driver/usart/usart.c  .generated_files/flags/MX256_RELEASE/62b50e3c45139e6c28a652f4015146e4c0eb2c33 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1261517080" 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1261517080/usart.o.d" -o ${OBJECTDIR}/_ext/1261517080/usart.o ../src/driver/usart/usart.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1509298662/wdt.o: ../src/driver/wdt/wdt.c  .generated_files/flags/MX256_RELEASE/cbbe60931c522c10dcfedd00c9c1984e2d71ccf5 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1509298662" 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1509298662/wdt.o.d" -o ${OBJECTDIR}/_ext/1509298662/wdt.o ../src/driver/wdt/wdt.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727528777/device_config.o: ../src/modules/device_config/device_config.c  .generated_files/flags/MX256_RELEASE/faf840bb062a03406f66c6645f87ad0c67d0bf54 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1727528777" 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1727528777/device_config.o.d" -o ${OBJECTDIR}/_ext/1727528777/device_config.o ../src/modules/device_config/device_config.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700139821/debug.o: ../src/system/debug/debug.c  .generated_files/flags/MX256_RELEASE/30683ab7d74d996bd3ed7359e2cc8e1f08ee7481 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/700139821" 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/700139821/debug.o.d" -o ${OBJECTDIR}/_ext/700139821/debug.o ../src/system/debug/debug.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system.o: ../src/system/system.c  .generated_files/flags/MX256_RELEASE/589ec3a5cc544e5d016a99a9c4403f3adb762347 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system.o.d" -o ${OBJECTDIR}/_ext/73441385/system.o ../src/system/system.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_exceptions.o: ../src/system/system_exceptions.c  .generated_files/flags/MX256_RELEASE/2a5fd780a65326453beb6e88a28ca064f5ecaed3 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/73441385/system_exceptions.o ../src/system/system_exceptions.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_init.o: ../src/system/system_init.c  .generated_files/flags/MX256_RELEASE/497de2ab8567bd7272072ca6b64801c6c8b78377 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_init.o.d" -o ${OBJECTDIR}/_ext/73441385/system_init.o ../src/system/system_init.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_time.o: ../src/system/system_time.c  .generated_files/flags/MX256_RELEASE/93e8693ad7f47352ae41e15a33c4055ac1775356 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_time.o.d" -o ${OBJECTDIR}/_ext/73441385/system_time.o ../src/system/system_time.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/MX256_RELEASE/51a9ea735842228acd5463de2ee20aa53da24ce4 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/801483606/bootloader.o: ../src/application/bootloader.c  .generated_files/flags/MX256_RELEASE/beeb8a5443503cdf3891b9c79708df0559bae239 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/bootloader.o.d" -o ${OBJECTDIR}/_ext/801483606/bootloader.o ../src/application/bootloader.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/801483606/flash_mem.o: ../src/application/flash_mem.c  .generated_files/flags/MX256_RELEASE/be9243cd651bbdddaa91605fc2ff797a62dd7f24 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/801483606" 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/801483606/flash_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/801483606/flash_mem.o.d" -o ${OBJECTDIR}/_ext/801483606/flash_mem.o ../src/application/flash_mem.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1537666708/board.o: ../src/board/board.c  .generated_files/flags/MX256_RELEASE/fb7aecfab42b094ca9bdb592eb5d283900c2a892 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1537666708" 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o.d 
	@${RM} ${OBJECTDIR}/_ext/1537666708/board.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1537666708/board.o.d" -o ${OBJECTDIR}/_ext/1537666708/board.o ../src/board/board.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/455916380/gpio.o: ../src/driver/gpio/gpio.c  .generated_files/flags/MX256_RELEASE/d3553f779f7ce76c41eb563fa1e993fc76558cf4 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/455916380" 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/455916380/gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/455916380/gpio.o.d" -o ${OBJECTDIR}/_ext/455916380/gpio.o ../src/driver/gpio/gpio.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1255152928/nvm.o: ../src/driver/nvmem/nvm.c  .generated_files/flags/MX256_RELEASE/912ac4b0133fa2ca4d73ec251fe89aace0a6f8a .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1255152928" 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1255152928/nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1255152928/nvm.o.d" -o ${OBJECTDIR}/_ext/1255152928/nvm.o ../src/driver/nvmem/nvm.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/401144697/systmr.o: ../src/driver/systmr/systmr.c  .generated_files/flags/MX256_RELEASE/178aaa756685da08c4ccd7606202bb6811d3a52e .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/401144697" 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/401144697/systmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/401144697/systmr.o.d" -o ${OBJECTDIR}/_ext/401144697/systmr.o ../src/driver/systmr/systmr.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1261517080/usart.o: ../src/driver/usart/usart.c  .generated_files/flags/MX256_RELEASE/7d75d286d3229389a87eaaf91d1d20bebd797f2f .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1261517080" 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1261517080/usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1261517080/usart.o.d" -o ${OBJECTDIR}/_ext/1261517080/usart.o ../src/driver/usart/usart.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1509298662/wdt.o: ../src/driver/wdt/wdt.c  .generated_files/flags/MX256_RELEASE/7ec1d0432f94e67d4010f98b20ca4a7d2869d100 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1509298662" 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1509298662/wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1509298662/wdt.o.d" -o ${OBJECTDIR}/_ext/1509298662/wdt.o ../src/driver/wdt/wdt.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1727528777/device_config.o: ../src/modules/device_config/device_config.c  .generated_files/flags/MX256_RELEASE/6b1681d0a57805fce706a68e072425509a124205 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1727528777" 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727528777/device_config.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1727528777/device_config.o.d" -o ${OBJECTDIR}/_ext/1727528777/device_config.o ../src/modules/device_config/device_config.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/700139821/debug.o: ../src/system/debug/debug.c  .generated_files/flags/MX256_RELEASE/44b9ebc67ca0ee8663435c121958518427ecfa2b .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/700139821" 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/700139821/debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/700139821/debug.o.d" -o ${OBJECTDIR}/_ext/700139821/debug.o ../src/system/debug/debug.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system.o: ../src/system/system.c  .generated_files/flags/MX256_RELEASE/3a07af52e246c7c14807dae8ce3991febbf06de3 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system.o.d" -o ${OBJECTDIR}/_ext/73441385/system.o ../src/system/system.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_exceptions.o: ../src/system/system_exceptions.c  .generated_files/flags/MX256_RELEASE/a0b8b856597159228a20a162da9ea98670fd29b8 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/73441385/system_exceptions.o ../src/system/system_exceptions.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_init.o: ../src/system/system_init.c  .generated_files/flags/MX256_RELEASE/14a880b07fb5594de058d92a3a057221b83aa2b2 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_init.o.d" -o ${OBJECTDIR}/_ext/73441385/system_init.o ../src/system/system_init.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/73441385/system_time.o: ../src/system/system_time.c  .generated_files/flags/MX256_RELEASE/91c3dd7f8f5793c4892876f91488b98978eaa4b3 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/73441385" 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/73441385/system_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/73441385/system_time.o.d" -o ${OBJECTDIR}/_ext/73441385/system_time.o ../src/system/system_time.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/MX256_RELEASE/5da19343a51e3ada6f72371523edb64fbf36d000 .generated_files/flags/MX256_RELEASE/cb90ecca696bc4b82196e137d6ddb149f2aaa209
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src/driver/gpio" -I"../src/driver/nvmem" -I"../src/driver/usart" -I"../src/system" -I"../src/system/common" -I"../src/system/debug" -I"../src/system/timers" -I"../src/application" -I"../src" -I"../src/system/common" -I"../src/modules/device_config" -I"../src/modules/rd_buffer" -I"../src/driver/systmr" -I"../src/driver/wdt" -I"../src/board" -I"../src/driver" -Wall -mcodecov -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/BOOTLOADER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_MX256_RELEASE=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
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
	${RM} -r build/MX256_RELEASE
	${RM} -r dist/MX256_RELEASE

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
