resource "aws_route53_record" "jenkins" {
  zone_id = "Z0555110OOV6VZH9ZMY7"
  name    = "jenkins.gulmiradevops.com"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.JenkinsServer.public_ip}"]
}