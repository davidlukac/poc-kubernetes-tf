variable "environment" {}
variable "namespaces" {}

resource "kubernetes_namespace" "kube-all-ns" {
  for_each = toset(var.namespaces)

  metadata {
    name = trimsuffix("${var.environment}-${each.value}", "-")
  }
}
