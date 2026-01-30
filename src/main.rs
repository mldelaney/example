use env_logger;
use log::info;

fn main() -> Result<(), Box<dyn std::error::Error>> {
  env_logger::init();
  info!("Hello, world!");

  Ok(())
}
