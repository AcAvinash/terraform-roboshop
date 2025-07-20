
# output "vpc_id" {
#   value = module.vpc.vpc_id
# }

# output "azs"{
#   value = module.vpc.availability_zones.names
# 
# }
# Example output format:
  #  - names                  = [
  #         - "us-east-1a",
  #         - "us-east-1b",
  #         - "us-east-1c",
  #         - "us-east-1d",
  #         - "us-east-1e",
  #         - "us-east-1f",
  #       ]


# terraform to get first two availability zones

# output "azs"{
#   value = slice(module.vpc.availability_zones.names, 0, 2)
# }

# just for testing purpose only
output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "database_subnet_ids" {
  value = module.vpc.database_subnet_ids
}

output "ami_id" {
  value = data.aws_ami.centos8.id
}

