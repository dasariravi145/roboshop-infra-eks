terraform {

      required_provider {

          aws = {

               source= "hashicorp/aws"
               version= "6.33.0"
          }
      }
      backend "s3"{

            bucket = "remote-state-aws-88s-dev"
            key = "terraform-eks-vpc"
            region = "us-east-1"
            encrypt = true
            use_lockfile = true
      }
}

