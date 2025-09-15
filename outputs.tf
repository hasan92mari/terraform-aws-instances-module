output "instance_id" {
    value = {for key, value in aws_instance.module_ec2instances : key => value.id}  
}

output "public_ip" {
    value = {for key, value in aws_instance.module_ec2instances : value.id => value.public_ip}  
}

output "public_dns" {
    value = {for key, value in aws_instance.module_ec2instances : value.id => value.public_dns}  
}