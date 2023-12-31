resource "aws_instance" "instances" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ var.security_group  ]

  tags = {
    Name = var.components
  }
}


resource "aws_route53_record" "records" {
  name    = "${var.components}-dev"
  type    = "A"
  ttl     = "30"
  zone_id = var.zone_id
  records = [aws_instance.instances.private_ip ]
}

resource "null_resource" "ansible" {
  depends_on= [
    aws_route53_record.records
  ]

  provisioner "local-exec" {
    command = <<EOF
     cd /root/learn-ansible
     git pull
     sleep 30
     ansible-playbook -i ${var.components}-dev.cloudev7.online, main.yml -e ansible_user=centos -e ansible_password=DevOps321 -e component=${var.components}
EOF
  }
}