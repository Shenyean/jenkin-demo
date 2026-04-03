resource "aws_s3_bucket" "demo_bucket" {
  bucket = "yeosy-demo-bucket-${random_id.suffix.hex}"

  tags = {
    Environment = "demo"
    ManagedBy   = "terraform"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}