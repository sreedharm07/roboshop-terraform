dev:
	rm -rf .terraform
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/vars.tfvars

prod:
	 rm -rf .terraform
	 terraform init -backend-config=env-prod/state.tfvars
	 terraform apply -auto-approve -var-file=env-prod/vars.tfvars
