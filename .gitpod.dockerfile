FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y lldb
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

