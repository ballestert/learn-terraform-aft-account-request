module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "tballester+20231027aft1@lucyinthecloud.com"
    AccountName               = "aft-provisionned-account-1"
    ManagedOrganizationalUnit = "ou-68jw-uvli545u"
    SSOUserEmail              = "tballester+20231027aft1@lucyinthecloud.com"
    SSOUserFirstName          = "AFT-provisionned user"
    SSOUserLastName           = "1"
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
