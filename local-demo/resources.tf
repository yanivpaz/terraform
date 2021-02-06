locals {
    local_size = lookup(var.storage_sizes, var.plans["5USD"])
}

resource "local_file" "demo" {
    content     = local.local_size
    filename = "${path.module}/demo-file"
}
