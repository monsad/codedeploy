resource "aws_codedeploy_app" "ms-codedeploy" {
  name = "httpd-server"
}

resource "aws_codedeploy_deployment_group" "dg-ms" {
  app_name              = "${aws_codedeploy_app.ms-codedeploy.name}"
  deployment_group_name = "DepGroupMS"
  service_role_arn      = "${aws_iam_role.codedeploy_service_ms.arn}"

  deployment_config_name = "CodeDeployDefault.OneAtATime"



  auto_rollback_configuration {
    enabled = true
    events = [
      "DEPLOYMENT_FAILURE",
    ]
  }
}
