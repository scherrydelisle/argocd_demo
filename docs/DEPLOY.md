## 🔁 Phase 2: Configure Argo CD to Sync GitHub Repo

### Objective: Successfully configure ArgoCD to sync with our Git repository. By the end of this phase, ArgoCD will monitor for changes and apply them automatically.

### Step 1: Create a Private GitHub Repository

- Open and Login to your GitHub
- Name it `kubernetes-addons`
- Important Step: Add a README during creation
- Copy your repo URL and update files in argocd-demo:
  - `manifests/applicationset.yaml`
  - `manifests/repository.yaml`

### Step 2: Configure Argo CD Access to Repo

Update `manifests/repository.yaml` with your GitHub repo URL, username, and PAT token.

Then deploy manifest files:

```bash
kubectl apply -n argocd -f manifests/repository.yaml
```

```bash
kubectl apply -n argocd -f manifests/applicationset.yaml
```

Visit ArgoCD, do you see your configured repository?

### Step 3: Clone Private Git Repository Locally

```bash
git clone git@github.com:your-git/kubernetes-addons.git
```

### Step 4: Add cert-manager Helm Chart

```bash
mkdir addons
cd addons
helm repo add jetstack https://charts.jetstack.io --force-update
helm pull jetstack/cert-manager --untar=true
git add .
git commit -m "Deploy cert-manager"
git push
```

### ✅ Check Argo CD Dashboard

- Open Argo CD
- Ensure `cert-manager` was deployed

---

## 🎉 Congratulations

You’ve completed setting up GitOps with Argo CD! Your GitHub repo is now automatically synced and changes are reflected in your local Kubernetes environment.
