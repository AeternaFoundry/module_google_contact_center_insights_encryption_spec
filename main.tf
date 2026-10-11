resource "google_contact_center_insights_encryption_spec" "contact_center_insights_encryption_specs" {
  for_each = var.contact_center_insights_encryption_specs

  kms_key  = each.value.kms_key
  location = each.value.location
  project  = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

