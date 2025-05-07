module "acr" {
    source = "../terraform_modules/acr"
    count = var.create_acr ? length(var.acr_name) : 0
    acr_name = element(var.acr_name,count.index)
    resource_group_name = var.resource_group_name
    location = var.location
    sku = var.sku
    admin_enabled = var.admin_enabled
    tags = var.tags
}

# module "kv" {
#   source = "../terraform_modules/kv"
#   count = var.create_kv ? length(var.kv_name) : 0
#   resource_group_name = var.resource_group_name
#   location = var.location
#   kv_name = element(var.kv_name,count.index)
#   tenant_id = var.tenant_id
# }