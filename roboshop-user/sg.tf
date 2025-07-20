

module "allow_all_sg"{
  source="../terraform-aws-sg"
  vpc_id = local.vpc_id
  sg_name = "allow_all_sg"
  sg_description = "Security group allowing all traffic"
  ingress_rules = var.sg_ingress_rules
  egress_rules = var.sg_ingress_rules
  project_name = var.project_name
  common_tags = var.common_tags
}