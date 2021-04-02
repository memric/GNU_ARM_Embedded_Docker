FROM ubuntu
LABEL Description="GNU Arm Embedded Toolchain for building ARM Cortex-A/M/R projects"
WORKDIR /home
COPY . .
RUN apt-get update && apt-get install -y make wget git &&\
    wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2 &&\
    tar -xvjf gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2 &&\
    rm gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2
ENV PATH="/home/gcc-arm-none-eabi-10-2020-q4-major/bin:${PATH}"
