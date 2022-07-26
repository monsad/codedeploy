resource "aws_key_pair" "codedeploy_key" {
  key_name   = "code-deploy-ms"
  public_key = file(var.public_key_path)
}
