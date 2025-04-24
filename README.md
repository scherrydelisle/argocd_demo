# argocd_demo

# 🧰 Dev Environment Setup Guide

Set up your development environment on **Windows** or **macOS** using either [Chocolatey](https://chocolatey.org/) or [Homebrew](https://brew.sh/). 

This guide includes install instructions for:

- Docker & Docker Desktop
- `kubectl` (Kubernetes CLI)
- Visual Studio Code
- OpenLens
- Terraform CLI
- Kind
- Helm
- GitHub CLI (`gh`)

---

## 📦 Install a Package Manager

### 🪟 Windows (Chocolatey)

Open PowerShell **as Administrator** and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Docker & Docker Desktop
Windows: Download and install manually: https://www.docker.com/products/docker-desktop
macOS: brew install --cask docker

kubectl (Kubernetes CLI)
Windows: choco install kubernetes-cli -y

macOS: brew install kubectl


Visual Studio Code
Windows: choco install vscode -y
macOS: brew install --cask visual-studio-code

OpenLens
Windows: choco install -y openlens
macOS: brew install --cask openlens

Windows: choco install terraform -y

macOS:
brew tap hashicorp/tap
brew install hashicorp/tap/terraform


Kind (Kubernetes IN Docker)
Windows:choco install -y kind
macOS: brew install kind

Helm
scoop install helm***
macOS: brew install helm

GitHub CLI (gh)
Windows: choco install -y gh
macOS:brew install gh

docker --version
kubectl version --client
code --version
openlens --version
terraform version
kind version
helm version
gh --version
