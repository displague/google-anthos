resource "null_resource" "preflight-checks" {
  # Run on every apply
  triggers = {
    key = uuid()
  }

  provisioner "local-exec" {
    command = "${path.module}/check_capacity.py"
  }
}
