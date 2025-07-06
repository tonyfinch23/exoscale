variable "exoscale_api_key" {
  default = "your-api-key-here"
}

variable "exoscale_secret_key" {
  default =  "your-api-secret-here"
}

variable "exoscale_zone_1" {
  description = "zone 1"
}

variable "exoscale_zone_2" {
  description = "zone 2"
}

variable "exoscale_image_name" {
  description = "image name"
}

variable "exoscale_instance_type" {
  description = "instance type"
}

variable "exoscale_disk_size" {
  description = "disk size in gb"
}

variable "exoscale_ssh_keys" {
  description = "ssh keys id"
}

variable "exoscale_existing_private_network_id" {
  description = "network id"
}

variable "exoscale_private_network_name" {
  description = "private network id"
}

variable "exoscale_security_group_id" {
  description = "security group id"
}

variable "exoscale_private_network_netmask" {
  description = "netmask"
}

variable "exoscale_private_network_start_ip" {
  description = "start ip"
}

variable "exoscale_private_network_end_ip" {
  description = "end ip"
}