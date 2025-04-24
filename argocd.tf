resource "helm_release" "argocd" {
  name      = "argocd"
  namespace = "argocd"

  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "6.7.3"

  create_namespace = true

  values = [
    file("${path.module}/argocd-values.yaml")
  ]
}