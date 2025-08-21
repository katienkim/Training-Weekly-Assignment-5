module "2-tier" {
  source = "../modules/2-tier"

  # provider variables
  deploy_region

  # db variables
  db_name

  # server variables
  ami
  instance_tags
  app_key

  # vpc variables
  vpc_name
  igw_name
  db_subnet_group_name
  app_sg_name
  db_sg_name
  priv_rtb_name
  public_rtb_name
}