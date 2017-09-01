# ClickOS Toolchain Container

This is the containerised vesion of [ClickOs' toolchain](https://github.com/cnplab/toolchain/).
It serves as quick start method for developing applications for Click OS.

To use it, simply pull it and run it:

    docker pull a1exanderjung/clickos-toolchain
    docker docker run -it --rm a1exanderjung/clickos-toolchain

You'll be dropped into `/bash` where you can find the `toolchain` itself,
[`minios`](https://github.com/cnplap/mini-os) and a copy of the latest version
of `xen`.
