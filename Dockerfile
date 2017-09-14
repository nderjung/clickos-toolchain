FROM pivotaldata/centos-gcc-toolchain:6-slim

RUN yum install -y git patch texinfo

ENV BUILD_ROOT /build
ENV MINIOS_ROOT $BUILD_ROOT/minios
ENV TOOLCHAIN_ROOT $BUILD_ROOT/toolchain
ENV CLICKOS_ROOT $BUILD_ROOT/clickos
ENV XEN_ROOT $BUILD_ROOT/xen-4.9.0
ENV WORKSPACE /app

RUN git clone https://github.com/sysml/mini-os.git $MINIOS_ROOT
RUN git clone https://github.com/sysml/toolchain.git $TOOLCHAIN_ROOT
RUN wget -O /tmp/xen.tar.gz https://downloads.xenproject.org/release/xen/4.9.0/xen-4.9.0.tar.gz && \
    tar -xzvf /tmp/xen.tar.gz -C $BUILD_ROOT
RUN make -C $TOOLCHAIN_ROOT all

VOLUME $WORKSPACE
WORKDIR $WORKSPACE
