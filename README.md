# argocd_demo

# 💻 Development Environment Setup

This guide outlines the installation of essential development tools using **Chocolatey** (for Windows) or **Homebrew** (for macOS).

---

## 🛠️ Install a Package Manager

### Windows – Chocolatey

Open PowerShell as Administrator and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

### 🪟 MacOS  – Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

### Docker & Docker Desktop
###
https://www.docker.com/products/docker-desktop/


### kubectl (Kubernetes CLI)
###

