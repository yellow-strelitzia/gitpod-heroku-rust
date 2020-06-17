FROM rust:alpine
WORKDIR /app
COPY . /app

RUN ["rustup", "update"]
RUN ["rustc", "/app/main.rs"]

CMD cargo run