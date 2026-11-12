output "risk_assessments_new_devices_id" {
  description = "Map of id values across all risk_assessments_new_devices, keyed the same as var.risk_assessments_new_devices"
  value       = { for k, v in auth0_risk_assessments_new_device.risk_assessments_new_devices : k => v.id }
}
output "risk_assessments_new_devices_remember_for" {
  description = "Map of remember_for values across all risk_assessments_new_devices, keyed the same as var.risk_assessments_new_devices"
  value       = { for k, v in auth0_risk_assessments_new_device.risk_assessments_new_devices : k => v.remember_for }
}

