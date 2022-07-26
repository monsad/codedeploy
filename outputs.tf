output bucket_name {
  value = "${aws_s3_bucket.codedeploy_ms.bucket_domain_name}"
}

output instance_ip {
  value = "${aws_instance.ec2_codedeploy.public_ip}"
}
