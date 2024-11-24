
locals {
  naming_convention_info = {
    env  = "env"
    site = "zn"
    app  = "www"
    name = "003"
  }
  tags = {
    environment = "prd"
  }
}

data "azurerm_client_config" "current" {}

resource "tls_private_key" "ssh_key" {
    algorithm = "RSA"
    rsa_bits = 4096
}


module "resource_groups" {
  source = "git::https://github.com/BrettOJ/tf-az-module-resource-group?ref=main"
  resource_groups = {
    1 = {
      name                   = var.resource_group_name
      location               = var.location
      naming_convention_info = local.naming_convention_info
      tags                   = local.tags
    }
  }
}

module "azurerm_user_assigned_identity" {
  source                 = "git::https://github.com/BrettOJ/tf-az-module-auth-user-msi?ref=main"
  resource_group_name    = module.resource_groups.rg_output[1].name
  location               = var.location
  naming_convention_info = local.naming_convention_info
  tags                   = local.tags
}

module "azurerm_key_vault" {
  source = "git::https://github.com/BrettOJ/tf-az-module-azure-key-vault?ref=main"
  resource_group_name = module.resource_groups.rg_output[1].name
  location            = var.location
  sku_name            = "standard"
  tenant_id           = data.azurerm_client_config.current.tenant_id
  enabled_for_deployment          = true
  enabled_for_disk_encryption     = true
  enabled_for_template_deployment = true
  enable_rbac_authorization       = true
  network_acls = {
      bypass                     = "AzureServices"
      default_action             = "Allow"
      ip_rules                   = null
      virtual_network_subnet_ids = null
  }
  purge_protection_enabled        = true
  public_network_access_enabled   = true
  soft_delete_retention_days      = 7
  tags                   = local.tags
  naming_convention_info = local.naming_convention_info
}

module "azure_key_vault_access_policy_boj" {
    source = "git::https://github.com/BrettOJ/tf-az-module-azure-key-vault-access-policy?ref=main"
    key_vault_id = module.azurerm_key_vault.key_vault_id
    tenant_id    = data.azurerm_client_config.current.tenant_id
    object_id    = data.azurerm_client_config.current.object_id
    application_id = null
    
    certificate_permissions = var.certificate_permissions
    key_permissions         = var.key_permissions
    secret_permissions      = var.secret_permissions
    storage_permissions     = var.storage_permissions
}

module "azurerm_key_vault_key" { 
  source = "git::https://github.com/BrettOJ/tf-az-module-key-vault-key?ref=main"
  key_vault_id = module.azurerm_key_vault.key_vault_id
  key_type     = var.key_type
  key_size     = var.key_size
  curve = var.curve
  key_opts = var.key_opts
  not_before_date = var.not_before_date
  expiration_date = var.expiration_date
  tags = local.tags
  naming_convention_info = local.naming_convention_info

  rotation_policy = {
    automatic = {
      time_before_expiry = var.rotation_policy_automatic_time_before_expiry
      time_after_creation = var.rotation_policy_automatic_time_after_creation
    }
    expire_after         = var.rotation_policy_expire_after
    notify_before_expiry = var.rotation_policy_notify_before_expiry
  }
}

module "azurerm_log_analytics_workspace" {
  source                                  = "git::https://github.com/BrettOJ/tf-az-module-azure-log-analytics-workspace?ref=main"
  location                                = var.location
  resource_group_name                     = module.resource_groups.rg_output[1].name
  allow_resource_only_permissions         = var.allow_resource_only_permissions
  local_authentication_disabled           = var.local_authentication_disabled
  sku                                     = var.sku
  retention_in_days                       = var.retention_in_days
  daily_quota_gb                          = var.daily_quota_gb
  cmk_for_query_forced                    = var.cmk_for_query_forced
  internet_ingestion_enabled              = var.internet_ingestion_enabled
  internet_query_enabled                  = var.internet_query_enabled
  reservation_capacity_in_gb_per_day      = var.reservation_capacity_in_gb_per_day
  data_collection_rule_id                 = var.data_collection_rule_id
  immediate_data_purge_on_30_days_enabled = var.immediate_data_purge_on_30_days_enabled
  tags                                    = local.tags
  naming_convention_info                  = local.naming_convention_info

  identity = {
    type         = "SystemAssigned"
    identity_ids = null
  }
}





