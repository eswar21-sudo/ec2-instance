# EC2 Instance Terraform Module

This module launches a single EC2 instance with an associated security group.

## Inputs

| Name                  | Description                               | Type         | Default     | Required |
|-----------------------|-------------------------------------------|--------------|-------------|----------|
| `name`                | Name of the instance                      | `string`     |             | ✅       |
| `ami_id`              | AMI ID to use                             | `string`     |             | ✅       |
| `instance_type`       | Instance type                             | `string`     | `"t3.micro"`| ❌       |
| `subnet_id`           | Subnet to launch into                     | `string`     |             | ✅       |
| `vpc_id`              | VPC for security group                    | `string`     |             | ✅       |
| `key_name`            | SSH key name                              | `string`     |             | ✅       |
| `associate_public_ip` | Associate public IP?                      | `bool`       | `true`      | ❌       |
| `tags`                | Tags to apply to resources                | `map(string)`| `{}`        | ❌       |

## Outputs

- `instance_id`
- `public_ip`
- `private_ip`
