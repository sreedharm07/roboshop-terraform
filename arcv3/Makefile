
dev:
	rm -rf .terraform
	terraform init -backend-config=dev/state.tfvars
	terraform apply -auto-approve -var-file=dev/var.tfvars
prod:
	rm -rf .terraform
	terraform init -backend-config=dev/state.tfvars
	terraform apply -auto-approve -var-file=dev/var.tfvars
