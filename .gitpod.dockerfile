FROM gitpod/workspace-full:latest

USER gitpod
# Install custom tools, runtime, etc.
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
RUN rustup update stable
