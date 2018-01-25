resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}-remote-state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = "${var.prevent_destroy}"
  }

  tags {
    Name        = "${var.prefix}-remote-state"
    Environment = "${terraform.workspace}"
    Service     = "${var.prefix}"
  }
}
