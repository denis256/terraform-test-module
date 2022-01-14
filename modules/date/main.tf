resource "null_resource" "date" {

  triggers = {
    always_run = "${timestamp()}"
  }


  provisioner "local-exec" {
    command = "date > ${path.module}/file.txt"
    interpreter = ["bash", "-c"]
  }
}


output "date" {
    value = file("${path.module}/file.txt")
}
