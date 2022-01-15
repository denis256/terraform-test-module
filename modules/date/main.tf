resource "null_resource" "date" {

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "date +%s > ${path.module}/file.txt"
    interpreter = ["bash", "-c"]
  }
}

data "local_file" "read_file" {
  filename = "${path.module}/file.txt"
  depends_on = [null_resource.date]
}


output "date" {
    value = data.local_file.read_file.content
}
