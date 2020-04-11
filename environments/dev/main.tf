module "kubernetes" {
  environment = var.environment
  namespaces = var.namespaces

  source = "../../modules/kubernetes"
}

provider "kubernetes" {

}
