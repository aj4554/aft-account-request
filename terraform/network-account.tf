module "coreinfra_network" {

source = "git::https://github.com/aws-ia/terraform-aws-control_tower_account_factory.git//modules/aft-account-request-framework?ref=v1.18.0"

  account_customizations_name = "network"

  control_tower_parameters = {
    AccountEmail              = "ashvin.ajacs+coreinfra-network@gmail.com"
    AccountName               = "network"
    ManagedOrganizationalUnit = "Network (ou-bllk-2w14yjyh)"

    SSOUserEmail     = "ashvin.jacinth@gmail.com"
    SSOUserFirstName = "Ashvin"
    SSOUserLastName  = "Jacinth"
  }

  account_tags = {
    owner      = "platform"
    foundation = "network"
    managed_by = "aft"
    purpose    = "network-hub"
  }

  change_management_parameters = {
    change_requested_by = "AJ"
    change_reason       = "Vend foundational Network account via AFT"
  }

  custom_fields = {
    account_purpose = "network-hub"
  }
}
