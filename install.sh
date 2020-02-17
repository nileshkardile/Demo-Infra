#!/bin/bash
# This script is used to provision aws resources using terraform.

set -xv

home_dir=/var/lib/jenkins/workspace/Demo-Infra
cd $home_dir/src
sudo /usr/bin/terraform init;
sudo /usr/bin/terraform plan;
sudo /usr/bin/terraform apply -auto-approve;

sudo /usr/bin/aws eks --region us-east-2 update-kubeconfig --name eks-demo
