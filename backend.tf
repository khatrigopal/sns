### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "sns.tfstate"
    region = "us-east-1"
  }
}
