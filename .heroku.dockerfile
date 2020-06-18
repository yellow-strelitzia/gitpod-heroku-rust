FROM rust:alpine
WORKDIR /app
COPY . /app

RUN ["rustup", "update"]

CMD cargo run