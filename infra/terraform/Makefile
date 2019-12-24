plan:
	terraform plan -var-file="secret.tfvars"

apply:
	terraform apply -var-file="secret.tfvars"

recreateApp:
	terraform taint aws_instance.team-city
	terraform apply -var-file="secret.tfvars"
