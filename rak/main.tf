resource "aws_instance" "rakesh_test" {
    count = length(var.instance_name)
    ami =var.ami
    instance_type = var.instance_type
    subnet_id ="subnet-0962069167a59d185"
    tags = {
        name="rakesh"
        owner=var.owner
    }
    volume_tags = {
      name="rakesh"
      owner=var.owner
    }
  
}