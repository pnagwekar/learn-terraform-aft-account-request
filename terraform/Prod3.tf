module "prod3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pnagweka+ct-prod3-aft@amazon.com"
    AccountName               = "prod3-aft"
    ManagedOrganizationalUnit = "Production"
    SSOUserEmail              = "pnagweka+ct-mgmt@amazon.com"
    SSOUserFirstName          = "Prod3"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Dropbox:AccountType" = "AFT"
    "Dropbox:Owner" = "mlteam@amazon.com"
    "Dropbox:CostCenter" = "123456"
    "Dropbox:Division" = "ENT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
    cidr = "10.1.0.0/21"
  }

  account_customizations_name = "prod"
}
