resource "fortios_firewall_address" "ramon" {
  allow_routing        = "disable"
  associated_interface = ""
  color                = 3
  name                 = "Ramon"
  subnet               = "72.111.117.177 255.255.255.255"
  type                 = "ipmask"
}




resource "fortios_firewall_policy" "Ramon" {
  name   = "ramon_policy"
  action = "accept"
  status = "disable"

  srcintf {
    name = "virtual-wan-link"
  }

  srcaddr {
    name = fortios_firewall_address.ramon.name
  }

  dstintf {
    name = "internal1"
  }
  dstaddr {
    name = "test123_local_subnet_1"
  }
  service {
    name = "ALL"
  }
}