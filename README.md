# Provision a developer workstation

> **NOTE:** Currently only Debian based systems are supported.

## What's installed

* `Docker`
* `Kubectl`
* `Lens`
* `Microsoft Azure CLI`
* `Microsoft Visual Studio Code`
* `zsh` (requires manual logout)

## First time setup

Open the terminal and run the following command:

```shell
curl -sL https://raw.githubusercontent.com/hugo-paredes/developer-workstation/main/bootstrap.sh | sudo bash
```

> **NOTE:** The scripts needs to run with elevated privileges because it needs to install dependencies.
