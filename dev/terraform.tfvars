########################  Common Variables ##################################
resource_group_name = ""
location = ""
tags = {
  "env" = "dev"
  "created_by" = "terraform"
}

########################  Flag Variables #####################################
create_acr = true
# create_kv = true

######################## Azure Container Registry ################################
acr_name = ["foxappacrdev"]
sku = "Standard"
admin_enabled = true


# kv_name = [ "test01" ]
# tenant_id = ""
