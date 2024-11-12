.PHONY: all app infrastructure

app:
	cd apps/greeter && terraform apply

aws:
	cd infrastructure/shared/aws && terraform apply

github:
	cd infrastructure/shared/github && terraform apply

