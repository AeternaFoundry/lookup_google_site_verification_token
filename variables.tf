variable "site_verification_token_lookup" {
  description = <<EOT
Map of site_verification_token_lookup, attributes below
Required:
    - identifier
    - type
    - verification_method
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    identifier          = string
    type                = string
    verification_method = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

