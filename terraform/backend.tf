terraform {

  backend "local" {
    path = "./terraform.tfstate"
  }
  # backend "s3" {
  #   bucket = "sandip-demo-tfstate-bucket"
  #   key    = "eks/terraform.tfstate"
  #   region = "us-west-2"
  # }
}


