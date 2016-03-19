```
.            ``
      <X X>  /
 ``---  |  -
     [     ]   A BlindRobot Project (by 32bits.io)
 _____U___U____________________________________________________________________
```

## Prerequisites

* Standalone ASF
* gcc 4.9 cross compiler.
* python 2.7
    * jinja2

## Building

1. cd into BlindRobot.
1. create .env.local (see below)
1. `source envsetup.sh`
1. `./eclipse.sh`

## .env.local

(TODO define local environment variables the user my supply to setup the toolchain.)

```

export LOCAL_ENV_CFLAGS=
export LOCAL_ENV_ASF_PATH=~/workspace/tools/xdk-asf-3.30.0
export LOCAL_ENV_ASF_CPU=samd21
export LOCAL_ENV_ASF_PART=samd21g18a
export LOCAL_ENV_TOOLCHAIN_PATH=~/workspace/tools/gcc-arm-none-eabi-4_9-2015q3
export LOCAL_ENV_PORT=cu.usbmodem1421
export LOCAL_ENV_ECLIPSE_PATH=/Applications/Eclipse.app/Contents/MacOS/eclipse
export LOCAL_ENV_FLAVOR=debug
export LOCAL_ENV_CMSIS_PATH=${LOCAL_ENV_ASF_PATH}/thirdparty/CMSIS

```

## build_support

TODO: describe how to add support for additional MCUs/Boards. (Hint: see build_support/samd21.mk)
