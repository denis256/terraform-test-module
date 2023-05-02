variable "file_content" {}

resource "local_file" "file2" {
    content     = var.file_content
    filename = "${path.module}/file-2.txt"
}

output "file_name" {
    value = local_file.file2.filename
}
