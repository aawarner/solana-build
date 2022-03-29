FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get upgrade -y && apt-get install git wget curl npm yarn libssl-dev libudev-dev pkg-config zlib1g-dev llvm clang make -y && curl https://sh.rustup.rs/ -sSf | sh -s -- -y &&$HOME/.cargo/bin/rustup component add rustfmt && $HOME/.cargo/bin/rustup update
ENTRYPOINT ["/bin/bash"]


