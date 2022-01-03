// ./vars.tf
variable linode_region {}
variable vps_image {
    default = "linode/ubuntu20.04"
}
variable vps_label {
    default = "vps"
}
variable vps_group {
    default = "central-vps"
}
variable vps_size {
    default = "g6-nanode-1"
}
variable ssh_pub {}
variable trusted_ip {}