resource "aws_instance" "instance" {
    ami           = data.aws_ami.ami.id
    instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-03c71c5d008981a14"]

    tags          = {
      Name = var.components
    }
  }


resource "aws_route53_record" "record" {
  zone_id = "Z07380001ED1GOXY0KMLD"
  name    = var.components
  type    = "A"
  ttl     = 30
  records = [ aws_instance.instance.private_ip ]
}


resource "null_resource" "null" {
  provisioner "local-exec" {
    command = <<EOF
     cd /root/learn-ansible
     git pull
     sleep 30
     ansible-playbook -i ${var.components}-dev.cloudev7.online, main.yml -e ansible_user=centos -e ansible_password=DevOps321 -e component=${var.components}
EOF
  }
}