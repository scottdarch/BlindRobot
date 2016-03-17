#!/usr/bin/env bash

export ARDUINO_ENV_BOARD=mkr1000
export ARDUINO_ENV_BOARD_VAR=mkr1000
export ARDUINO_ENV_BOARD_VERSION=1.6.4-mkr02
export ARDUINO_ENV_ARCH=samd
export ARDUINO_ENV_IDE_VERSION=mkr1000
export ARDUINO_ENV_VENDOR=arduino
export ARDUINO_ENV_PORT=cu.usbmodem1421

export ARDUINO_ENV_IDE_PATH=/Applications/Arduino-${ARDUINO_ENV_IDE_VERSION}.app/Contents/Java
export ARDUINO_ENV_USER_PATH=~/Documents/Arduino
export ARDUINO15_ENV_PATH=~/Library/Arduino15
export ARDUINO_CMSIS_PATH=${ARDUINO15_ENV_PATH}/packages/arduino/tools/CMSIS/4.0.0-atmel
export ARDUINO_ENV_IDE_PATH_BOARD=${ARDUINO15_ENV_PATH}/packages/${ARDUINO_ENV_VENDOR}-${ARDUINO_ENV_BOARD}/hardware/${ARDUINO_ENV_ARCH}/${ARDUINO_ENV_BOARD_VERSION}

export PATH=$PATH:${ARDUINO15_ENV_PATH}/packages/arduino/tools/bossac/1.6.1-arduino/

