
data "aws_ssm_parameter" "backend_alb_sg_id" {
  name = "/${var.project_name}/${var.Env}/backend_alb_sg_id"
}

data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/${var.project_name}/${var.Env}/bastion_sg_id"
}

data "aws_ssm_parameter" "mongodb_sg_id" {
  name = "/${var.project_name}/${var.Env}/mongodb_sg_id"
}

data "aws_ssm_parameter" "redis_sg_id" {
  name = "/${var.project_name}/${var.Env}/redis_sg_id"
}

# data "aws_ssm_parameter" "rabbitmq_sg_id" {
#   name = "/${var.project_name}/${var.Env}/rabbitmq_sg_id"
# }
