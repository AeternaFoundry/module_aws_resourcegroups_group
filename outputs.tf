output "resourcegroups_groups_id" {
  description = "Map of id values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resourcegroups_groups_arn" {
  description = "Map of arn values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "resourcegroups_groups_configuration" {
  description = "Map of configuration values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "resourcegroups_groups_description" {
  description = "Map of description values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "resourcegroups_groups_name" {
  description = "Map of name values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "resourcegroups_groups_region" {
  description = "Map of region values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "resourcegroups_groups_resource_query" {
  description = "Map of resource_query values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => one(v.resource_query) if v.resource_query != null && length(v.resource_query) > 0 }
}
output "resourcegroups_groups_tags" {
  description = "Map of tags values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "resourcegroups_groups_tags_all" {
  description = "Map of tags_all values across all resourcegroups_groups, keyed the same as var.resourcegroups_groups"
  value       = { for k, v in aws_resourcegroups_group.resourcegroups_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

