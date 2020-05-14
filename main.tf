/**
 * Copyright 2020, CLOUDPILOTS Software & Consulting GmbH
 *
 */

# https://git.cloudpilots.com/customers/veroo/tf/tf-environments-template
# https://www.terraform.io/docs/providers/github/r/actions_secret.html
# https://www.terraform.io/docs/configuration/variables.html#environment-variables
# https://juliankleine@github.com:orgs/cloudpilots-dev/teams/iac-team/repositories


# https://www.terraform.io/docs/modules/sources.html#github
# https://www.terraform.io/docs/modules/sources.html#generic-git-repository

# dev environment
module "env-dev" {
  source          = "git::https://github.com/cloudpilots-dev/tf-module-environment"
  environment     = "dev"
  billing_account = var.billing_account
  dns_domain      = var.dns_domain
  domain          = var.domain
  folder_id       = var.folder_id
  name            = var.name
  project_suffix  = var.project_suffix
  parent_repo     = var.parent_repo
}

# prod environment
module "env-prod" {
  source          = "git::https://github.com/cloudpilots-dev/tf-module-environment"
  environment     = "prod"
  billing_account = var.billing_account
  dns_domain      = var.dns_domain
  domain          = var.domain
  folder_id       = var.folder_id
  name            = var.name
  project_suffix  = var.project_suffix
  parent_repo     = var.parent_repo
  recordsets = [
    # {
    #   name    = "custom"
    #   type    = "NS"
    #   ttl     = 300
    #   records = module.env-custom.dns_zone_name_servers
    # },
    # {
    #   name    = "sandbox"
    #   type    = "NS"
    #   ttl     = 300
    #   records = module.env-sandbox.dns_zone_name_servers
    # },
    # {
    #   name    = "qa"
    #   type    = "NS"
    #   ttl     = 300
    #   records = module.env-qa.dns_zone_name_servers
    # },
    # {
    #   name    = "demo"
    #   type    = "NS"
    #   ttl     = 300
    #   records = module.env-demo.dns_zone_name_servers
    # },
    {
      name    = "dev"
      type    = "NS"
      ttl     = 300
      records = module.env-dev.dns_zone_name_servers
    }
  ]
}

# demo environment
# module "env-demo" {
#   source          = "git::https://github.com/cloudpilots-dev/tf-module-environment.git?ref=master"
#   environment     = "demo1" 
#   billing_account = var.billing_account
#   dns_domain      = var.dns_domain
#   domain          = var.domain
#   folder_id       = var.folder_id
#   name            = var.name
#   project_suffix  = var.project_suffix
# }

# qa environment
# module "env-qa" {
#   source          = "git::https://github.com/cloudpilots-dev/tf-module-environment.git?ref=master"
#   environment     = "qa"
#   billing_account = var.billing_account
#   dns_domain      = var.dns_domain
#   domain          = var.domain
#   folder_id       = var.folder_id
#   name            = var.name
#   project_suffix  = var.project_suffix
# }

# sandbox environment
# module "env-sandbox" {
#   source          = "git::https://github.com/cloudpilots-dev/tf-module-environment.git?ref=master"
#   environment     = "sandbox"
#   billing_account = var.billing_account
#   dns_domain      = var.dns_domain
#   domain          = var.domain
#   folder_id       = var.folder_id
#   name            = var.name
#   project_suffix  = var.project_suffix
# }

# custom environment
# module "env-custom" {
#   source          = "git::https://github.com/cloudpilots-dev/tf-module-environment.git?ref=master"
#   environment     = "custom"
#   billing_account = var.billing_account
#   dns_domain      = var.dns_domain
#   domain          = var.domain
#   folder_id       = var.folder_id
#   name            = var.name
#   project_suffix  = var.project_suffix
# }


