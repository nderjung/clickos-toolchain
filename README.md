# ClickOS Toolchain Container

This is the containerised vesion of [ClickOS' toolchain](https://github.com/cnplab/toolchain/).
It serves as quick start method for developing applications for Click OS.

It contains the built `toolchain` itself, a copy of [`minios`](https://github.com/cnplap/mini-os)
and a copy of the latest version of `xen`.

## Building an application

To get started building applications using the toolchain, you should mount your
working directory and run your build command, like so:

    docker run -it --rm \
        -v $(pwd):/app \
        a1exanderjung/clickos-toolchain \
        make
