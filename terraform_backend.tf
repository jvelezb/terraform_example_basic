terraform {
  backend "s3" {
    bucket = "jvelezb-terraform-backend-bucket"
    key    = "terraform_state_files/example_app.tfstate"
    region = "us-east-1"
    encrypt = false
  }
}
