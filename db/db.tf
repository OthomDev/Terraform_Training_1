resource "aws_instance" "db" {
    ami = "ami-052efd3df9dad4825"
    instance_type = "t2.micro"
    tags = {
        Name = "DB Server"
    }
} 

output PrivateIP {
  value       = aws_instance.db.private_ip
}