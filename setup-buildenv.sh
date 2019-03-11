#!/bin/sh

./setup-installenv.sh

if [ ! -d bolos_env/clang-arm-fropi ]; then

  sudo dpkg --add-architecture i386
  sudo apt-get update
  sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386

  mkdir bolos_env

  cd bolos_env
  wget https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q1-update/+download/gcc-arm-none-eabi-5_3-2016q1-20160330-linux.tar.bz2
  bunzip2 gcc-arm-none-eabi-5_3-2016q1-20160330-linux.tar.bz2
  tar xvf gcc-arm-none-eabi-5_3-2016q1-20160330-linux.tar
  rm -f gcc-arm-none-eabi-5_3-2016q1-20160330-linux.tar

  wget http://releases.llvm.org/4.0.0/clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
  tar xvf clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
  rm -f clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz

  ln -sf clang+llvm-4.0.0-x86_64-linux-gnu-ubuntu-16.04 clang-arm-fropi 

  cd ..

fi


. ./configure.env
