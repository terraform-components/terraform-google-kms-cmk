resource "google_kms_crypto_key" "this" {
  name            = var.name
  key_ring        = var.kms_key_ring_id
  purpose         = "ENCRYPT_DECRYPT"
  rotation_period = "7776000s"

  version_template {
    protection_level = "SOFTWARE"
    algorithm        = "GOOGLE_SYMMETRIC_ENCRYPTION"
  }

  labels = var.labels
}

