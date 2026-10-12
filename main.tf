resource "vault_pki_secret_backend_sign" "pki_secret_backend_signs" {
  for_each = var.pki_secret_backend_signs

  backend                 = each.value.backend
  common_name             = each.value.common_name
  csr                     = each.value.csr
  name                    = each.value.name
  alt_names               = each.value.alt_names
  auto_renew              = each.value.auto_renew
  cert_metadata           = each.value.cert_metadata
  exclude_cn_from_sans    = each.value.exclude_cn_from_sans
  format                  = each.value.format
  ip_sans                 = each.value.ip_sans
  issuer_ref              = each.value.issuer_ref
  jks_password            = each.value.jks_password
  min_seconds_remaining   = each.value.min_seconds_remaining
  namespace               = each.value.namespace
  not_after               = each.value.not_after
  other_sans              = each.value.other_sans
  pkcs12_encoder          = each.value.pkcs12_encoder
  pkcs12_password         = each.value.pkcs12_password
  remove_roots_from_chain = each.value.remove_roots_from_chain
  ttl                     = each.value.ttl
  uri_sans                = each.value.uri_sans
}

