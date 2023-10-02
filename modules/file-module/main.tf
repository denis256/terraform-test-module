resource "local_file" "file1" {
    content     = "test file content with path.module"
    filename = "${path.module}/file.txt"
}

