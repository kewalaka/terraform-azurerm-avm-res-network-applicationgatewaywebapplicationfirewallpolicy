resource "azapi_resource" "this" {
  type                      = "Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies@2025-03-01"
  name                      = var.name
  parent_id                 = var.parent_id
  ignore_null_property      = true
  schema_validation_enabled = true
  location                  = var.location
  body                      = local.resource_body
  tags                      = var.tags

  response_export_values = [
    "properties.httpListeners",
    "properties.pathBasedRules",
    "properties.provisioningState",
  ]
}
