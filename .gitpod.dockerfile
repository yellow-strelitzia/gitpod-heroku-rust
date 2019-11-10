FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
