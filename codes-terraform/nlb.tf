resource "aws_lb" "nlb" {
  name               = "nlb-group"
  internal           = false
  load_balancer_type = "network"
  subnets            = ["subnet-0283f226dfd8498bb"]

  enable_deletion_protection = false
  
}
