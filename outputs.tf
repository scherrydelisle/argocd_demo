output "argocd_server_service" {
  value       = "argocd-server"
  description = "The ArgoCD service service name"
}

# output "admin_password_command" {
#   description = "Command to get the initial admin password"
#   value       = "kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d"
# }

output "port_forward_command" {
  description = "command to port forward the ArgoCD server"
  value       = "kubectl port-forward svc/argocd-server -n argocd 8080:80"
}