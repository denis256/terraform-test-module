variable file_path {
  default = "."
}

resource "local_file" "file1" {
  content  = "test file content with path"
  filename = "${var.file_path}/file.txt"
}

