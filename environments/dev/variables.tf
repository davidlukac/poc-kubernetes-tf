variable "environment" { default = "dev" }

variable "namespaces" {
  type = list(string)

  default = [
    "",
    "ns-foo",
    "ns-bar",
    "ns-baz",
  ]
}
