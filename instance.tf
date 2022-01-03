// ./instance.tf
resource "linode_instance" "vps" {
    image           = var.vps_image
    label           = var.vps_label
    group           = var.vps_group
    region          = var.linode_region
    type            = var.vps_size
    authorized_keys = [var.ssh_pub]
    
    stackscript_id  = linode_stackscript.docker_compose.id
}