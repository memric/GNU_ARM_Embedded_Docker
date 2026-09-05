FROM ubuntu
LABEL Description="GNU Arm Embedded Toolchain for building ARM Cortex-A/M/R projects"
WORKDIR /home
COPY . .
RUN apt update && apt install -y make cmake ninja-build wget git xz-utils python3 qemu-system-arm &&\
    wget https://gitlab.arm.com/api/v4/projects/tooling%2Fgnu-toolchains-for-arm/packages/generic/gnu-toolchain/15.3.rel1/arm-gnu-toolchain-15.3.rel1-x86_64-arm-none-eabi.tar.xz &&\
    tar xf arm-gnu-toolchain-15.3.rel1-x86_64-arm-none-eabi.tar.xz &&\
    rm arm-gnu-toolchain-15.3.rel1-x86_64-arm-none-eabi.tar.xz
ENV PATH="/home/arm-gnu-toolchain-15.3.rel1-x86_64-arm-none-eabi/bin:${PATH}"
