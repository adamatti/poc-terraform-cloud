resource "aws_s3_bucket" "example" {
  bucket = "marcelo-adamatti-${var.stage}"
}