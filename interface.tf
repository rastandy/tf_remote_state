variable "region" {
  default     = "eu-central-1"
  description = "The AWS region."
}

variable "prefix" {
  default     = "examplecom"
  description = "The name of our org, i.e. examplecom."
}

variable "prevent_destroy" {
  description = "Prevent destruction for the state bucket"
  default     = false
}

output "s3_bucket_id" {
  value = "${aws_s3_bucket.remote_state.id}"
}
