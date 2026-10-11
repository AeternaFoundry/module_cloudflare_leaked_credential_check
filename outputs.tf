output "leaked_credential_checks_enabled" {
  description = "Map of enabled values across all leaked_credential_checks, keyed the same as var.leaked_credential_checks except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_leaked_credential_check.leaked_credential_checks : k => v.enabled if v.enabled != null }
}
output "leaked_credential_checks_zone_id" {
  description = "Map of zone_id values across all leaked_credential_checks, keyed the same as var.leaked_credential_checks except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_leaked_credential_check.leaked_credential_checks : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

