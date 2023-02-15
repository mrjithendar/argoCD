// get the remote state data for eks
data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = "jithendar"
    key    = "argoCDDemo/eks/"
    region = "us-east-1"
    # workspace_key_prefix = "environment"
    # dynamodb_table       = "devops-demo.tfstate.lock"
  }
}
