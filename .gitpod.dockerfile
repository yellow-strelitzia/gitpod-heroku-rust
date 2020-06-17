FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y lldb libpython3.8 
RUN sudo rm -rf /var/lib/apt/lists/*

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

RUN curl https://cli-assets.heroku.com/install.sh | sh
RUN chown -R gitpod:gitpod /home/gitpod/.cache/heroku