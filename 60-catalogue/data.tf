data "aws_ami" "Dev" {
  owners = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project_name}/${var.Env}/private_subnet_ids"
}

data "aws_ssm_parameter" "catalogue_sg_ids" {
  name = "/${var.project_name}/${var.Env}/catalogue_sg_ids"
}




