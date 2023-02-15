terraform {
  backend "s3" {
    bucket = "jithendar"
    key    = "argoCDDemo/eks/"
    region = "us-east-1"
  }
}

# get all available AZs in our region
data "aws_availability_zones" "available_azs" {
  state = "available"
}

data "aws_caller_identity" "current" {} # used for accesing Account ID and ARN

# get DNS Hosted Zone
# ATTENTION: if you don't have a Route53 Zone already, replace this data by a new resource
data "aws_route53_zone" "hosted_zone" {
  name = var.dns_hosted_zone
}

data "aws_eks_cluster_auth" "cluster" {
  name = var.cluster_name
}
