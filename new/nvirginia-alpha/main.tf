module "two-tier" {
  source = "../module/2-tier"

  # provider variables
  deploy_region = var.deploy_region

  # db variables
  db_name = var.db_name

  # server variables
  ami = var.ami
  instance_tags = var.instance_tags
  app_key = var.app_key

  # vpc variables
  vpc_name = var.vpc_name
  igw_name = var.igw_name
  db_subnet_group_name = var.db_subnet_group_name
  app_sg_name = var.app_sg_name
  db_sg_name = var.db_sg_name
  priv_rtb_name = var.priv_rtb_name
  public_rtb_name = var.public_rtb_name
}