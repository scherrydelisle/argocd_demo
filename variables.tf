variable "kubernetes_context" {
  type        = string
  default     = "kind-argocd-demo"
  description = "The kubernetes context to use (minikube, kind, etc)"
}