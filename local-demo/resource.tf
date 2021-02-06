resource "local_file" "demo" {
    content     = "demo"
    filename = "${path.module}/demo-file"
}
