FROM ubuntu
LABEL Description="GNU Arm Embedded Toolchain for building ARM Cortex-A/M/R projects"
WORKDIR /home
COPY . .
RUN apt-get update && apt-get install -y make wget git zip &&\
    wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.07/gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2 &&\
    tar -xvjf gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2 &&\
    rm gcc-arm-none-eabi-10.3-2021.07-x86_64-linux.tar.bz2
ENV PATH="/home/gcc-arm-none-eabi-10.3-2021.07/bin:${PATH}"
