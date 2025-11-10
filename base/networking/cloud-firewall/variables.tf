variable "cloud_firewall_name" {
  type = string
  default = ""
}

variable "inbound_rules_config" {
  type = list(object({
    protocol = string,
    port_range = string,
    source_addresses = list(string)
  }))

  default = [ {
    "protocol" = "tcp",
    "port_range" = "80",
    "source_addresses" : ["201.20.124.5/24"]
  }, 
  {
    "protocol" = "tcp",
    "port_range" = "443",
    "source_addresses" : ["201.20.124.5/24"]
  } ]
}

variable "outbound_rules_config" {
  type = list(object({
    protocol = string,
    port_range = string,
    destination_addresses = list(string)
  }))

  default = [ {
    "protocol" = "tcp",
    "port_range" = "80",
    "destination_addresses" : ["0.0.0.0/0"]
  } ]
}

variable "droplet_ids" {
  type = list(number)
  default = []
}