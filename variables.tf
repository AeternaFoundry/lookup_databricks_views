variable "views_lookup" {
  description = <<EOT
Map of views_lookup, attributes below
Required:
    - catalog_name
    - schema_name
Optional:
    - ids
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    catalog_name = string
    schema_name  = string
    ids          = optional(set(string))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

