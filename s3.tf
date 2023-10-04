
terraform {
  backend "s3" {
    bucket  = "kumtutu" 
    key     = "terraform.tfstate"
    region  = "us-east-1" 
    encrypt = true
  }
}
   resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 5
  write_capacity = 5
 
  attribute {
    name = "LockID"
    type = "S"
  }
}