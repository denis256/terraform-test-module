resource "local_file" "foo2" {
    content     = "foo2  "
    filename = "${path.module}/foo2.bar"
}

output "foo2" {
    value = local_file.foo2.filename
}