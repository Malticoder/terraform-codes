resource "aws_lb_target_group" "tg" {
  name     = "http-target-group"
  port     = 80
  protocol = "TCP"
  vpc_id   = "vpc-0e6293a7846120ced"

  health_check {
    protocol = "TCP"
    port     = "80"
  }
}
