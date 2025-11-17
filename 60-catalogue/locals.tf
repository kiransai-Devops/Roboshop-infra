locals {
  common_names = "${var.project_name}-${var.Env}"
  private_subnet_ids = split("," , data.aws_ssm_parameter.database_subnet_ids.value)[0]
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  ami_id = data.aws_ami.Dev.id
  common_tags = {
    project_name = var.project_name
    Env = var.Env
  }
}


