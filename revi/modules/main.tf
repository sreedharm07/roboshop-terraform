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
  provisioner "local-exec" {
    depends_on=[
    aws_route53_record.records ]
    command = <<EOF
cd /home/centos/roboshop-terraform/revi/learn-ansible
git pull
sleep 50
ansible-playbook -i "${var.components}-dev.cloudev.online", main.yml -i ansible_user=centos -i ansible_password=DevOps321 -i var.components

EOF
  }
}