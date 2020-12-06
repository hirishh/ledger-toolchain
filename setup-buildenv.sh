#!/bin/sh

./setup-installenv.sh

if [ ! -d bolos_env/clang-arm-fropi ]; then

  sudo dpkg --add-architecture i386
  sudo apt-get update
  sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386

  mkdir bolos_env

  cd bolos_env || exit
  wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2
  bunzip2 gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2
  tar xvf gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar
  rm -f gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar

  ln -sf gcc-arm-none-eabi-9-2020-q2-update gcc-arm-none-eabi

  wget https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz
  tar xvf clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz
  rm -f clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz

  ln -sf clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04 clang-arm-fropi

  cd ..

fi


. ./configure.env
