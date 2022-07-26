resource "aws_s3_bucket" "codedeploy_ms" {
  bucket = "codedeploy-${random_integer.suffix.result}"
  acl    = "private"
}

resource "random_integer" "suffix" {
  min = 100
  max = 999
}
