module "dev3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pnagweka+ct-dev3-aft@amazon.com"
    AccountName               = "dev3-aft"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "pnagweka+ct-mgmt@amazon.com"
    SSOUserFirstName          = "Dev3"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Dropbox:AccountType" = "AFT"
    "Dropbox:Owner" = "mlteam@amazon.com"
    "Dropbox:CostCenter" = "12345"
    "Dropbox:Division" = "ENT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
    cidr = "10.0.0.0/21"
  }

  account_customizations_name = "sandbox"
}
