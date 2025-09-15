resource "aws_instance" "module_ec2instances" {
  for_each = var.instance_config_map
  ami = each.value.ami
  instance_type = each.value.instance_type
  ebs_optimized = each.value.ebs
  region = each.key
  tags = {
    Name = "modlue_${each.key}_instance"
  }

}