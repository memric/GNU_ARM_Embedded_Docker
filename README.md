# GNU Arm Embedded Toolchain Docker image
Dockerfile to build image. Image is intended for building 32-bit Arm Cortex-A, Cortex-R and Cortex-M projects with [GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm)
## Usage
Run Docker to buid your project with image:
`docker run -v "$(pwd)":/build -w /build -it memric/gnu_arm_embedded make`

