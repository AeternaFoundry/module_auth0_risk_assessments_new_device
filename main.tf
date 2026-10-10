resource "auth0_risk_assessments_new_device" "risk_assessments_new_devices" {
  for_each = var.risk_assessments_new_devices

  remember_for = each.value.remember_for
}

