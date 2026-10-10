variable "risk_assessments_new_devices" {
  description = <<EOT
Map of risk_assessments_new_devices, attributes below
Required:
    - remember_for
EOT

  type = map(object({
    remember_for = number
  }))
  validation {
    condition = alltrue([
      for k, v in var.risk_assessments_new_devices : (
        v.remember_for >= 1
      )
    ])
    error_message = "must be at least 1"
  }
}

