resource "cloudflare_leaked_credential_check" "leaked_credential_checks" {
  for_each = var.leaked_credential_checks

  zone_id = each.value.zone_id
  enabled = each.value.enabled
}

