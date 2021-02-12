locals {
    local_price = lookup(var.env_price, var.env_type["dev"])
}

resource "local_file" "demo" {
    content     = local.local_price
    filename = "${path.module}/demo-file"
}
