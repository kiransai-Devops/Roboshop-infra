#!bin/bash
component=$1
dnf install ansible -y
ansible-pull -U https://github.com/kiransai-Devops/ansible-roboshop-roles-tf.git -e component=$component main.yaml




