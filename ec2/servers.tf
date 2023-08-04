variable "ami" {
  default = " ami-03265a0778a880afb  "
}

resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.ami
  name    = "frontend-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "mongodb" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "mongodb-dev.cloudev7.online"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = var.ami
  name    = "mongodb-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = var.ami
  name    = "catalogue-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "redis" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = var.ami
  name    = "redis-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = var.ami
  name    = "user-dev.cloudev.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "cart" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = var.ami
  name    = "cart-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = var.ami
  name    = "mysql-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = var.ami
  name    = "shipping-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = var.ami
  name    = "rabbitmq-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = var.ami
  name    = "payment-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami           = var.ami
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-03c71c5d008981a14"]

  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = var.ami
  name    = "dispatch-dev.cloudev7.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}