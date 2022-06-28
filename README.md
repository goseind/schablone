# The Technology Template for Site Reliability Engineering

## Setup

1. Log in or sign up for [Azure with free credit](https://azure.microsoft.com)
2. Log in or sign up for [GitHub](https://github.com)
3. Run `az ad sp create-for-rbac --skip-assignment`.
4. Add `appId` and `password` as a GitHub Action Secret in your repo settings.

## SRE Principles



# app

1. Build and push the image to Harbor:
   * `docker build . -t core.harbor.domain/library/hello-node:v3`
   * `docker push core.harbor.domain/library/hello-node:v3`
   * ..