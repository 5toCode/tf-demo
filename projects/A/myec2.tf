/* module "ec2module" {
  source = "../../modules/ec2"
}
*/


resource "aws_security_group" "state-demo" {

  name        = "state-demo"
  description = "Security group for state demo"
  vpc_id      = "vpc-00e7e47a"

  ingress {
    self      = false
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/16",
    ]
  }
}
