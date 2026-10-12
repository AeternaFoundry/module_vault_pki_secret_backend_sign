variable "pki_secret_backend_signs" {
  description = <<EOT
Map of pki_secret_backend_signs, attributes below
Required:
    - backend
    - common_name
    - csr
    - name
Optional:
    - alt_names
    - auto_renew
    - cert_metadata
    - exclude_cn_from_sans
    - format
    - ip_sans
    - issuer_ref
    - jks_password
    - min_seconds_remaining
    - namespace
    - not_after
    - other_sans
    - pkcs12_encoder
    - pkcs12_password
    - remove_roots_from_chain
    - ttl
    - uri_sans
EOT

  type = map(object({
    backend                 = string
    common_name             = string
    csr                     = string
    name                    = string
    alt_names               = optional(list(string))
    auto_renew              = optional(bool)
    cert_metadata           = optional(string)
    exclude_cn_from_sans    = optional(bool)
    format                  = optional(string)
    ip_sans                 = optional(list(string))
    issuer_ref              = optional(string)
    jks_password            = optional(string)
    min_seconds_remaining   = optional(number)
    namespace               = optional(string)
    not_after               = optional(string)
    other_sans              = optional(list(string))
    pkcs12_encoder          = optional(string)
    pkcs12_password         = optional(string)
    remove_roots_from_chain = optional(bool)
    ttl                     = optional(string)
    uri_sans                = optional(list(string))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

