
resource "aws_security_group" "mod_network_security_group" {
  name = join("", [var.stack_prefix, "_sg"])

  vpc_id = var.mod_network_vpc_id

  tags = {
    Name = join("", [var.stack_prefix, "_sg"])
    Environment = var.stack_environment
    Role = join("", [var.stack_prefix, "_network"])
    Cost_Center = var.stack_cost_center
  }
}