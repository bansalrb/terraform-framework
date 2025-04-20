module "ecr" {
    source = "../terraform_modules/acr"
    count = var.create_ecr ? length(var.ecr_name) : 0
    ecr_name = element(var.ecr_name,count.index)
}
