output "public_ip" {
  description = "Public ip of ec2 instance"
  value       = ["${aws_instance.web1.public_ip}"]
}
