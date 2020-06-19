use std::env;
use actix_web::{web, App, HttpResponse, HttpServer, Responder};

async fn index() -> impl Responder {
    HttpResponse::Ok().body("Hello world!")
}

async fn index2() -> impl Responder {
    HttpResponse::Ok().json("{\"message\":\"Hello world again!\"}")
}

#[actix_rt::main]
async fn main() -> std::io::Result<()> {
    let port;
    match env::var("PORT") {
        Ok(val) => port = val,
        Err(_e) => port = "8080".to_string(),
    }
    let bindtarget = format!("0.0.0.0:{}", port); 

    HttpServer::new(|| {
        App::new()
            .route("/", web::get().to(index))
            .route("/again", web::get().to(index2))
    })
    .bind(bindtarget)?
    .run()
    .await
}