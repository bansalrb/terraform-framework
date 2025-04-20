module "ecr" {
    source = "../terraform_modules/acr"
    ecr_name = element(var.ecr_name, count.index)
}