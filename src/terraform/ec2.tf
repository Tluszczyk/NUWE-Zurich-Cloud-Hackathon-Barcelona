# data

locals {
    user_data_files = [
        "../app/requirements.txt",
        "../app/app_ls.py",
        "../app/index.html"
    ]
}

data "template_file" "user_data" {
  count    = length(local.user_data_files)
  template = file("${local.user_data_files[count.index]}")
}

data "aws_ami" "this" {
    most_recent = true
    owners      = ["amazon"]
    filter {
        name   = "architecture"
        values = ["arm64"]
    }
    filter {
        name   = "name"
        values = ["al2023-ami-2023*"]
    }
}


# instances

resource "aws_instance" "A" {
    ami = data.aws_ami.this.id
    instance_type = "t4g.nano"

    key_name = aws_key_pair.A.key_name
    vpc_security_group_ids = [aws_security_group.this.id]

    user_data = join("\n", data.template_file.user_data.*.rendered)
}

resource "aws_instance" "B" {
    ami = data.aws_ami.this.id
    instance_type = "t4g.nano"

    key_name = aws_key_pair.B.key_name
    vpc_security_group_ids = [aws_security_group.this.id]

    user_data = join("\n", data.template_file.user_data.*.rendered)
}