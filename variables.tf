variable "resourcegroups_groups" {
  description = <<EOT
Map of resourcegroups_groups, attributes below
Required:
    - name
Optional:
    - description
    - region
    - tags
    - tags_all
    - configuration (block):
        - parameters (optional, block):
            - name (required)
            - values (required)
        - type (required)
    - resource_query (block):
        - query (required)
        - type (optional)
EOT

  type = map(object({
    name        = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    configuration = optional(list(object({
      parameters = optional(list(object({
        name   = string
        values = list(string)
      })))
      type = string
    })))
    resource_query = optional(object({
      query = string
      type  = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

