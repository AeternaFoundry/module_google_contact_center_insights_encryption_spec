output "contact_center_insights_encryption_specs_id" {
  description = "Map of id values across all contact_center_insights_encryption_specs, keyed the same as var.contact_center_insights_encryption_specs except keys with no id are omitted"
  value       = { for k, v in google_contact_center_insights_encryption_spec.contact_center_insights_encryption_specs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "contact_center_insights_encryption_specs_kms_key" {
  description = "Map of kms_key values across all contact_center_insights_encryption_specs, keyed the same as var.contact_center_insights_encryption_specs except keys with no kms_key are omitted"
  value       = { for k, v in google_contact_center_insights_encryption_spec.contact_center_insights_encryption_specs : k => v.kms_key if v.kms_key != null && length(v.kms_key) > 0 }
}
output "contact_center_insights_encryption_specs_location" {
  description = "Map of location values across all contact_center_insights_encryption_specs, keyed the same as var.contact_center_insights_encryption_specs except keys with no location are omitted"
  value       = { for k, v in google_contact_center_insights_encryption_spec.contact_center_insights_encryption_specs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "contact_center_insights_encryption_specs_project" {
  description = "Map of project values across all contact_center_insights_encryption_specs, keyed the same as var.contact_center_insights_encryption_specs except keys with no project are omitted"
  value       = { for k, v in google_contact_center_insights_encryption_spec.contact_center_insights_encryption_specs : k => v.project if v.project != null && length(v.project) > 0 }
}

