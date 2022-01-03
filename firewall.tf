// ./firewall.tf
resource "linode_firewall" "vps" {
    label   = var.vps_label

    // http & https
    inbound {
        label       = "allow_http"
        action      = "ACCEPT"
        protocol    = "TCP"
        ports       = "80"
        ipv4        = ["0.0.0.0/0"]
        ipv6        = ["ff00::/8"]
    }
    inbound {
        label       = "allow_https"
        action      = "ACCEPT"
        protocol    = "TCP"
        ports       = "443"
        ipv4        = ["0.0.0.0/0"]
        ipv6        = ["ff00::/8"]
    }
    // ssh from home
    inbound {
        label       = "allow_ssh"
        action      = "ACCEPT"
        protocol    = "TCP"
        ports       = "22"
        ipv4        = [var.trusted_ip]
    }
    inbound_policy  = "DROP"

    outbound_policy = "ACCEPT"

    linodes = [linode_instance.vps.id]
}