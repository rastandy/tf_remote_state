# Module for storing remote state in an S3 bucket for Terraform

A lightweight remote state module for Terraform that creates S3
buckets for environments.

## Usage

```hcl
module "remote_state" {
  source = "github.com/rastandy/tf_remote_state?ref=0.1.1"
}
```

See `interface.tf` for additional configurable variables.

## License

MIT

