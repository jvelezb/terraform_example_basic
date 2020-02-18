terraform {
  backend "s3" {
    bucket = "bb55b6f311cd7376e9135897cf3a1dd5c9840bc7"
    key    = "terraform_state_files/example_app.tfstate"
    region = "eu-west-1"
    encrypt = true
  }
}