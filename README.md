# Schablone 📃

**Schablone** 📃 is a technology template for [Site Reliability Engineering (SRE)](https://sre.google/sre-book/part-II-principles/) and includes the following tech stack:

* Kubernetes
* Terraform
* Azure
* Docker
* Node/React

## Setup

1. Log in or sign up for [Azure with free credit](https://azure.microsoft.com) and install the Azure CLi on your system (e. g. `brew install azure-cli`)
2. Run `az login` and follow the instructions
3. Clone this repository
4. Run `az ad sp create-for-rbac --skip-assignment` and copy the values
5. Add `appId` and `password` as a GitHub Action Secret in your repo
6. Navigate to `infrastructure/terraform` and run `terraform apply -var="appId=<your appId>" -var="password=<your password>"
7. 