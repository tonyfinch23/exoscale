data "exoscale_template" "vm1_template" {
  zone = var.exoscale_zone_1
  name = var.exoscale_image_name
}

resource "exoscale_compute_instance" "vm1_isntance" {
  zone = var.exoscale_zone_1
  name = "vm1"

  template_id = data.exoscale_template.vm1_template.id
  type        = var.exoscale_instance_type
  disk_size   = var.exoscale_disk_size
  ssh_keys = [ var.exoscale_ssh_keys ]
  network_interface {
    network_id = var.exoscale_network_id
  }
  security_group_ids = [ var.exoscale_security_group_id ]
}

resource "exoscale_compute_instance" "vm2_isntance" {
  zone = var.exoscale_zone_1
  name = "vm2"

  template_id = data.exoscale_template.vm1_template.id
  type        = var.exoscale_instance_type
  disk_size   = var.exoscale_disk_size
  ssh_keys = [ var.exoscale_ssh_keys ]
  network_interface {
    network_id = var.exoscale_network_id
  }
  security_group_ids = [ var.exoscale_security_group_id ]
}