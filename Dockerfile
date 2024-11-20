FROM ubuntu
LABEL Description="GNU Arm Embedded Toolchain for building ARM Cortex-A/M/R projects"
WORKDIR /home
COPY . .
RUN apt update && apt install -y make cmake wget git xz-utils &&\
    wget https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-x86_64-arm-none-eabi.tar.xz &&\
    tar xf arm-gnu-toolchain-13.3.rel1-x86_64-arm-none-eabi.tar.xz &&\
    rm arm-gnu-toolchain-13.3.rel1-x86_64-arm-none-eabi.tar.xz
ENV PATH="/home/arm-gnu-toolchain-13.3.Rel1-x86_64-arm-none-eabi/bin:${PATH}"
