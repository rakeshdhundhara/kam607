module "aws_instance" {
  source = "../rak"
  instance_name = var.instance_name
  ami = var.ami
  instance_type = var.instance_type
#   subnet_id ="subnet-0962069167a59d185"
  owner = var.owner
}

module "raks3" {
  source = "./kal"
  bucket = var.bucket  
  acl    = var.acl 
}