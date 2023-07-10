module "stage3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pnagweka+ct-stage3-aft@amazon.com"
    AccountName               = "stage3-aft"
    ManagedOrganizationalUnit = "Staging"
    SSOUserEmail              = "pnagweka+ct-mgmt@amazon.com"
    SSOUserFirstName          = "Stage3"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "stage"
    cidr = "10.2.0.0/21"
  }

  account_customizations_name = "stage"
}
