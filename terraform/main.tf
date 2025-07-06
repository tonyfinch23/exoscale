data "exoscale_template" "vm_template_1" {
  zone = var.exoscale_zone_1
  name = var.exoscale_image_name
}

data "exoscale_template" "vm_template_2" {
  zone = var.exoscale_zone_2
  name = var.exoscale_image_name
}

resource "exoscale_compute_instance" "vm1_instance" {
  zone = var.exoscale_zone_1
  name = "vm1"

  template_id = data.exoscale_template.vm_template_1.id
  type        = var.exoscale_instance_type
  disk_size   = var.exoscale_disk_size
  ssh_keys = [ var.exoscale_ssh_keys ]
  network_interface {
    network_id = var.exoscale_existing_private_network_id
  }
  security_group_ids = [ var.exoscale_security_group_id ]
}

resource "exoscale_compute_instance" "vm2_isntance" {
  zone = var.exoscale_zone_1
  name = "vm2"

  template_id = data.exoscale_template.vm_template_1.id
  type        = var.exoscale_instance_type
  disk_size   = var.exoscale_disk_size
  ssh_keys = [ var.exoscale_ssh_keys ]
  network_interface {
    network_id = var.exoscale_existing_private_network_id
  }
  security_group_ids = [ var.exoscale_security_group_id ]
}

resource "exoscale_private_network" "private_net" {
  zone = var.exoscale_zone_2
  name = var.exoscale_private_network_name

  netmask  = var.exoscale_private_network_netmask
  start_ip = var.exoscale_private_network_start_ip
  end_ip   = var.exoscale_private_network_end_ip
}

resource "exoscale_compute_instance" "vm3_isntance" {
  zone = var.exoscale_zone_2
  name = "vm3"

  template_id = data.exoscale_template.vm_template_2.id
  type        = var.exoscale_instance_type
  disk_size   = var.exoscale_disk_size
  ssh_keys = [ var.exoscale_ssh_keys ]
  network_interface {
    network_id = exoscale_private_network.private_net.id
  }
  security_group_ids = [ var.exoscale_security_group_id ]
}