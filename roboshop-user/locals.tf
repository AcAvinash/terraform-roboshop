
# locals are used to store the intermediate values 
# that can be used in other parts of the configuration.
# The output of local wont seen in the screen for that we need to use output block

locals{
  vpc_id= module.vpc.vpc_id # module.<module_name>.<output_name>
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  database_subnet_ids = module.vpc.database_subnet_ids
  allow_all_security_group_id = module.allow_all_sg.sg_group_ids
  ips = aws_instance.ec2_instance
}