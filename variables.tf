variable "contact_center_insights_encryption_specs" {
  description = <<EOT
Map of contact_center_insights_encryption_specs, attributes below
Required:
    - kms_key
    - location
Optional:
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    kms_key  = string
    location = string
    project  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

