use env_logger;
use log::{debug, info};

fn main() -> Result<(), Box<dyn std::error::Error>> {
  env_logger::init();
  info!("This is a info message");
  debug!("This is a debug message");

  Ok(())
}
