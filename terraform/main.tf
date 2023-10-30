module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tballester+20231027aft2@lucyinthecloud.com"
    AccountName               = "aft-provisionned-account-2"
    ManagedOrganizationalUnit = "test:ou"
    SSOUserEmail              = "tballester+20231027aft2@lucyinthecloud.com"
    SSOUserFirstName          = "AFT-provisionned user"
    SSOUserLastName           = "2"
  }

  account_tags = {
    "Learn Tutorial" = "AFT" 
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "test_sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tballester+20231030aftsandboxtest@lucyinthecloud.com"
    AccountName               = "aft-provisionned-account-3"
    ManagedOrganizationalUnit = "sandbox:ou (ou-68jw-uvli545u)"
    SSOUserEmail              = "tballester+20231030aftsandboxtest@lucyinthecloud.com"
    SSOUserFirstName          = "AFT-provisionned account_repaired"
    SSOUserLastName           = "3"
  }

  account_tags = {
    "Learn Tutorial" = "AFT" 
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
