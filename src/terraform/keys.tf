resource "tls_private_key" "A" {
    algorithm     = "RSA"
    rsa_bits      = 4096
}

resource "aws_key_pair" "A" {
    key_name      = "instance-A-key"
    public_key    = tls_private_key.A.public_key_openssh

    provisioner "local-exec" {
    command = <<-EOT
        echo "${tls_private_key.A.private_key_pem}" > A.pem
    EOT
    }
}


resource "tls_private_key" "B" {
    algorithm     = "RSA"
    rsa_bits      = 4096
}

resource "aws_key_pair" "B" {
    key_name      = "instance-B-key"
    public_key    = tls_private_key.B.public_key_openssh

    provisioner "local-exec" {
    command = <<-EOT
        echo "${tls_private_key.B.private_key_pem}" > B.pem
    EOT
    }
}
