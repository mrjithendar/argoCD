# bucket               = "devops-demo.tfstate"
# key                  = "argocdinfra.json"
# region               = "us-east-1"
# workspace_key_prefix = "environment"
# dynamodb_table       = "devops-demo.tfstate.lock"


terraform {
  backend "s3" {
    bucket = "jithendar"
    key    = "argoCDDemo/eks/"
    region = "us-east-1"
  }
}
