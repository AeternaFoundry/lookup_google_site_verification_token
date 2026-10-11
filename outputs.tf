output "site_verification_token_lookup_id" {
  description = "Map of id values across all site_verification_token_lookup, keyed the same as var.site_verification_token_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_site_verification_token.site_verification_token_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "site_verification_token_lookup_identifier" {
  description = "Map of identifier values across all site_verification_token_lookup, keyed the same as var.site_verification_token_lookup except keys with no identifier are omitted"
  value       = { for k, v in data.google_site_verification_token.site_verification_token_lookup : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "site_verification_token_lookup_token" {
  description = "Map of token values across all site_verification_token_lookup, keyed the same as var.site_verification_token_lookup except keys with no token are omitted"
  value       = { for k, v in data.google_site_verification_token.site_verification_token_lookup : k => v.token if v.token != null && length(v.token) > 0 }
}
output "site_verification_token_lookup_type" {
  description = "Map of type values across all site_verification_token_lookup, keyed the same as var.site_verification_token_lookup except keys with no type are omitted"
  value       = { for k, v in data.google_site_verification_token.site_verification_token_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}
output "site_verification_token_lookup_verification_method" {
  description = "Map of verification_method values across all site_verification_token_lookup, keyed the same as var.site_verification_token_lookup except keys with no verification_method are omitted"
  value       = { for k, v in data.google_site_verification_token.site_verification_token_lookup : k => v.verification_method if v.verification_method != null && length(v.verification_method) > 0 }
}

