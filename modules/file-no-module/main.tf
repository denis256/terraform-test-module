resource "local_file" "file1" {
    content     = "test file content without path.module"
    filename = "file.txt"
}

