FROM rust:slim
WORKDIR /app
COPY . /app

RUN ["rustup", "update"]

CMD cargo run