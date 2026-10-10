output "risk_assessments_new_devices_id" {
  description = "Map of id values across all risk_assessments_new_devices, keyed the same as var.risk_assessments_new_devices except keys with no id are omitted"
  value       = { for k, v in auth0_risk_assessments_new_device.risk_assessments_new_devices : k => v.id if v.id != null && length(v.id) > 0 }
}
output "risk_assessments_new_devices_remember_for" {
  description = "Map of remember_for values across all risk_assessments_new_devices, keyed the same as var.risk_assessments_new_devices except keys with no remember_for are omitted"
  value       = { for k, v in auth0_risk_assessments_new_device.risk_assessments_new_devices : k => v.remember_for if v.remember_for != null }
}

