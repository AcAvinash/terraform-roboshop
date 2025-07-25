# Terraform configuration for creating an AWS Security Group
resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id

  tags = merge(
    {
      Name = "${var.project_name}-${var.sg_name}"
    },
    var.common_tags,
    var.sg_tags
  )

  dynamic "ingress" {
  for_each = var.ingress_rules
  content {
    from_port   = ingress.value.from_port
    to_port     = ingress.value.to_port
    protocol    = ingress.value.protocol
    cidr_blocks = ingress.value.cidr_blocks
    description = ingress.value.description
  }
}

  dynamic "egress" {
  for_each = var.egress_rules
  content {
    from_port   = egress.value.from_port
    to_port     = egress.value.to_port
    protocol    = egress.value.protocol
    cidr_blocks = egress.value.cidr_blocks
    description = egress.value.description
  }
}
}