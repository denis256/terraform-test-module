variable "file_content" {}

resource "local_file" "file" {
    content     = var.file_content
    filename = "${path.module}/file-1.txt"
}

output "file_name" {
    value = local_file.file.filename
}
