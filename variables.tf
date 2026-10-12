variable "notebooks_lookup" {
  description = <<EOT
Map of notebooks_lookup, attributes below
Optional:
    - like
    - starts_with
    - with_describe
    - limit (block):
        - from (optional)
        - rows (required)
EOT

  type = map(object({
    like          = optional(string)
    starts_with   = optional(string)
    with_describe = optional(bool)
    limit = optional(object({
      from = optional(string)
      rows = number
    }))
  }))
}

