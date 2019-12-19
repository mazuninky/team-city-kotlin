resource "aws_instance" "team-city" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t2.micro"
  security_groups = [
    aws_security_group.allow_outbound.name, aws_security_group.allow_ssh.name, aws_security_group.allow_web.name]

  key_name = var.ssh_keys
//  tags {
//    Name = "test-instance"
//  }

//  provisioner "local-exec" {
//    command = "ansible-playbook -u root -i '${self.public_ip},' provision.yml"
//  }
}
