terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
  hostname = "70.186.141.11"
  token    = "5bk68yGHm4wHksdxz1N57hncG6wN1y"
  insecure = "true"
}
