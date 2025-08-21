module "2-tier" {
  source = "../modules/2-tier"

  # provider variables
  region = var.deploy_region

  # db variables
  identifier = var.db_name

  # server variables
  ami = var.ami
  tags = var.instance_tags
  key_name = var.app_key

  # vpc variables
  Name_vpc = var.vpc_name
  Name_igw = var.igw_name
   = var.db_subnet_group_name
   = var.app_sg_name
  var.db_sg_name
  var.priv_rtb_name
  var.public_rtb_name
}