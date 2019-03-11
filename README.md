# ledger-toolchain: A Ledger Environment Toolchain Builder for Ubuntu 


#### Before you start *PLEASE* ensure you have your Ledger Nano S mnumonic backed up in case you need to reset your device!!!

### First Run
1. Run `setup_installenv.sh`
2. Run `setup-buildenv.sh`
3. Profit. (now you can `make load` your app).

By default the environment is set for `Ledger Nano S`. Please modify `configure.env` and change the BOLOS_SDK to the blue one.

Remember to checkout the correct SDK version (`nanos-secure-sdk` and `blue-secure-sdk`).

### Than...

If you already did the First Run, the next time you just need to `source configure.env`.