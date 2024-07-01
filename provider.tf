terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 4.18.0"
   }
 }

 backend "s3" {
   bucket = "test-bucket-terraform-saurabhnegi"
   key    = "state"
   region = "us-west-1"
 }
}
