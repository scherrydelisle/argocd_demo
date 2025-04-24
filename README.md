# 🧰 Dev Environment Setup Guide

Set up your development environment on **Windows** or **macOS** using [Chocolatey](https://chocolatey.org/) or [Homebrew](https://brew.sh/).

---

## 📋 Tools Included

- Docker & Docker Desktop  
- kubectl (Kubernetes CLI)  
- Visual Studio Code  
- OpenLens  
- Terraform CLI  
- Kind  
- Helm  
- GitHub CLI (`gh`)  

---

## 📦 Install a Package Manager

### 🪟 Windows – Chocolatey

Open PowerShell as Administrator and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### 🍎 macOS – Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

---

## 🐳 Docker & Docker Desktop

### 🪟 Windows

Download and install manually:  
🔗 [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)

### 🍎 macOS

```bash
brew install --cask docker
```

> After installation, open Docker Desktop at least once to complete setup.

---

## ☸️ kubectl (Kubernetes CLI)

### 🪟 Windows

```powershell
choco install kubernetes-cli -y
```

### 🍎 macOS

```bash
brew install kubectl
```

---

## 🧑‍💻 Visual Studio Code

### 🪟 Windows

```powershell
choco install vscode -y
```

### 🍎 macOS

```bash
brew install --cask visual-studio-code
```

---

## 🔍 OpenLens

### 🪟 Windows

```powershell
choco install -y openlens
```

### 🍎 macOS

```bash
brew install --cask openlens
```

---

## 🌍 Terraform CLI

### 🪟 Windows

```powershell
choco install terraform -y
```

### 🍎 macOS

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

---

## ⚙️ Kind (Kubernetes IN Docker)

### 🪟 Windows

```powershell
choco install -y kind
```

### 🍎 macOS

```bash
brew install kind
```

---

## 🎛️ Helm - FIX LATER

### 🪟 Windows (via Scoop)

First, install Scoop (if not already installed):

```powershell
iwr -useb get.scoop.sh | iex
```

Then install Helm:

```powershell
scoop install helm
```

### 🍎 macOS

```bash
brew install helm
```

---

## 🧰 GitHub CLI (`gh`)

### 🪟 Windows

```powershell
choco install -y gh
```

### 🍎 macOS

```bash
brew install gh
```

---

## ✅ Verify Installations

Run these commands in your terminal to verify everything is set up:

```bash
docker --version
kubectl version --client
code --version
openlens --version
terraform version
kind version
helm version
gh --version
```

---

## 📝 Notes

- Be sure to **restart your terminal** after installing new tools to ensure they are available in your PATH.
- Scoop is an alternative Windows package manager that's lightweight and useful for tools like Helm.
