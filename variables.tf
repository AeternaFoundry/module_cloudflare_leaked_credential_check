variable "leaked_credential_checks" {
  description = <<EOT
Map of leaked_credential_checks, attributes below
Required:
    - zone_id
Optional:
    - enabled
EOT

  type = map(object({
    zone_id = string
    enabled = optional(bool)
  }))
}

