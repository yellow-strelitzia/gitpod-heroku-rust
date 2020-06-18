FROM rust:slim
WORKDIR /app
COPY . /app

RUN ["rustup", "update"]
RUN ["cargo", "build", "--release"]

CMD cargo run --release