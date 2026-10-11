output "views_lookup_id" {
  description = "Map of id values across all views_lookup, keyed the same as var.views_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_views.views_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "views_lookup_catalog_name" {
  description = "Map of catalog_name values across all views_lookup, keyed the same as var.views_lookup except keys with no catalog_name are omitted"
  value       = { for k, v in data.databricks_views.views_lookup : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "views_lookup_ids" {
  description = "Map of ids values across all views_lookup, keyed the same as var.views_lookup except keys with no ids are omitted"
  value       = { for k, v in data.databricks_views.views_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "views_lookup_provider_config" {
  description = "Map of provider_config values across all views_lookup, keyed the same as var.views_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_views.views_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "views_lookup_schema_name" {
  description = "Map of schema_name values across all views_lookup, keyed the same as var.views_lookup except keys with no schema_name are omitted"
  value       = { for k, v in data.databricks_views.views_lookup : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}

