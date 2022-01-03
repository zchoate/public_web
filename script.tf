// ./script.tf
resource "linode_stackscript" "docker_compose" {
    label       = "publicwebsetup"
    description = "Setup for Public Web"
    script      = file("./scripts/setup.sh")
    images      = [var.vps_image]
}