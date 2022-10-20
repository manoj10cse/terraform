resource "aws_route53_record" "component" {
  zone_id = "Z04602961I29SHWLCRTU9"
  name    = "${var.COMPONENT}-dev.santhoshroboshop.internal"
  type    = "A"
  ttl     = 10
  records = [aws_spot_instance_request.spot_worker.private_ip]

}