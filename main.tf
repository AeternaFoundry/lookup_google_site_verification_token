data "google_site_verification_token" "site_verification_token_lookup" {
  for_each = var.site_verification_token_lookup

  identifier          = each.value.identifier
  type                = each.value.type
  verification_method = each.value.verification_method

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

