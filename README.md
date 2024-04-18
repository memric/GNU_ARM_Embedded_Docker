# GNU Arm Embedded Toolchain Docker image

[![GitHub Release](https://img.shields.io/github/v/release/memric/GNU_ARM_Embedded_Docker)](https://github.com/memric/GNU_ARM_Embedded_Docker/releases) [![Build](https://img.shields.io/github/actions/workflow/status/memric/GNU_ARM_Embedded_Docker/docker-build.yml?branch=master)](https://github.com/memric/GNU_ARM_Embedded_Docker/actions/workflows/docker-build.yml)

Image is intended for building 32-bit Arm Cortex-A, Cortex-R and Cortex-M projects with [GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)

## Usage

Run Docker to buid your project with image:
```
docker run -v "$(pwd)":/build -w /build -it memric/gnu_arm_embedded make
```
