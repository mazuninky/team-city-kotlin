resource "aws_eip" "team_city_ip" {
  instance = aws_instance.team-city.id
  vpc = true
}

output "ip" {
  value = aws_eip.team_city_ip.public_ip
}
