
dev:
	rm -rf .terraform
	terraform init -backend-config=dev/state.tfvars
	terraform apply -auto-approve -var-file=dev/main.tfvars
prod:
	rm -rf .terraform
	terraform init -backend-config=dev/state.tfvars
	terraform apply -auto-approve -var-file=dev/main.tfvars
