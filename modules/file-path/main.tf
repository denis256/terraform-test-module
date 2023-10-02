variable file_path {
  default = "./file.txt"
}

resource "local_file" "file1" {
  content  = "test file content with path"
  filename = var.file_path
}

