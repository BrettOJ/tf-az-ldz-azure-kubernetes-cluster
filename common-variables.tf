variable "location" {
  description = "The location where the Managed Kubernetes Cluster should be created."
  type        = string
}

variable "resource_group_name" {
  description = "Specifies the Resource Group where the Managed Kubernetes Cluster should exist."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length."
  type        = string

}

variable "dns_prefix_private_cluster" {
  description = "Specifies the DNS prefix to use with private clusters."
  type        = string
}

variable "automatic_upgrade_channel" {
  description = "The upgrade channel for this Kubernetes Cluster. Possible values are patch, rapid, node-image and stable. Omitting this field sets this value to none."
  type        = string
}

variable "azure_policy_enabled" {
  description = "Should Azure Policy be enabled for this Kubernetes Cluster?"
  type        = bool
}

variable "cost_analysis_enabled" {
  description = "Should cost analysis be enabled for this Kubernetes Cluster?"
  type        = bool
}

variable "disk_encryption_set_id" {
  description = "The ID of the Disk Encryption Set which should be used for the Nodes and Volumes."
  type        = string
}

variable "edge_zone" {
  description = "Specifies the Extended Zone (formerly called Edge Zone) within the Azure Region where this Managed Kubernetes Cluster should exist."
  type        = string
}

variable "http_application_routing_enabled" {
  description = "Should HTTP Application Routing be enabled?"
  type        = bool
}

variable "image_cleaner_enabled" {
  description = "Specifies whether Image Cleaner is enabled."
  type        = bool
}

variable "image_cleaner_interval_hours" {
  description = "Specifies the interval in hours when images should be cleaned up."
  type        = number
}

variable "kubernetes_version" {
  description = "Version of Kubernetes specified when creating the AKS managed cluster."
  type        = string
}

variable "local_account_disabled" {
  description = "If true local accounts will be disabled."
  type        = bool
}

variable "node_os_upgrade_channel" {
  description = "The upgrade channel for this Kubernetes Cluster Nodes' OS Image."
  type        = string
}

variable "node_resource_group" {
  description = "The name of the Resource Group where the Kubernetes Nodes should exist."
  type        = string
}

variable "oidc_issuer_enabled" {
  description = "Enable or Disable the OIDC issuer URL."
  type        = bool
}

variable "open_service_mesh_enabled" {
  description = "Is Open Service Mesh enabled? For more details, please visit Open Service Mesh for AKS."
  type        = bool
}

variable "private_cluster_enabled" {
  description = "Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created."
  type        = bool
}

variable "private_dns_zone_id" {
  description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None. In case of None you will need to bring your own DNS server and set up resolving, otherwise the cluster will have issues after provisioning. Changing this forces a new resource to be created."
  type        = string
}

variable "private_cluster_public_fqdn_enabled" {
  description = "Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to false."
  type        = bool
}

variable "workload_identity_enabled" {
  description = "Specifies whether Azure AD Workload Identity should be enabled for the Cluster. Defaults to false."
  type        = bool
}

variable "role_based_access_control_enabled" {
  description = "Whether Role Based Access Control for the Kubernetes Cluster should be enabled. Defaults to true. Changing this forces a new resource to be created."
  type        = bool
}

variable "run_command_enabled" {
  description = "Whether to enable run command for the cluster or not. Defaults to true."
  type        = bool
}

variable "sku_tier" {
  description = "The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free, Standard (which includes the Uptime SLA) and Premium. Defaults to Free."
  type        = string
}

variable "support_plan" {
  description = "The support plan for the Kubernetes Cluster. Possible values are NoSupport, Standard and Premium. Defaults to NoSupport."
  type        = string
}

variable "default_node_pool_name" {
  description = "The name of the default node pool."
  type        = string
}

variable "default_node_pool_vm_size" {
  description = "The size of the Virtual Machine."
  type        = string
}

variable "default_node_pool_capacity_reservation_group_id" {
  description = "The ID of the Capacity Reservation Group."
  type        = string
}

variable "default_node_pool_auto_scaling_enabled" {
  description = "Should the default node pool have auto-scaling enabled?"
  type        = bool
}

variable "default_node_pool_host_encryption_enabled" {
  description = "Should the default node pool have host encryption enabled?"
  type        = bool
}

variable "default_node_pool_node_public_ip_enabled" {
  description = "Should the default node pool have public IP enabled?"
  type        = bool
}

variable "default_node_pool_gpu_instance" {
  description = "Should the default node pool have GPU instance?"
  type        = bool
}

variable "default_node_pool_host_group_id" {
  description = "The ID of the Host Group."
  type        = string
}

variable "default_node_pool_kubelet_config_allowed_unsafe_sysctls" {
  description = "The list of allowed unsafe sysctls."
  type        = list(string)
}

variable "default_node_pool_kubelet_config_container_log_max_line" {
  description = "The maximum number of log lines that the kubelet allows to be written to a container's stdout/stderr."
  type        = number
}

variable "default_node_pool_kubelet_config_container_log_max_size_mb" {
  description = "The maximum size of the log file before it is rotated."
  type        = number
}

variable "default_node_pool_kubelet_config_cpu_cfs_quota_enabled" {
  description = "Whether CPU CFS quota enforcement is enabled."
  type        = bool
}

variable "default_node_pool_kubelet_config_cpu_cfs_quota_period" {
  description = "The CPU CFS quota period."
  type        = string
}

variable "default_node_pool_kubelet_config_cpu_manager_policy" {
  description = "The CPU Manager policy."
  type        = string
}

variable "default_node_pool_kubelet_config_image_gc_high_threshold" {
  description = "The image garbage collection high threshold."
  type        = number
}

variable "default_node_pool_kubelet_config_image_gc_low_threshold" {
  description = "The image garbage collection low threshold."
  type        = number
}

variable "default_node_pool_kubelet_config_pod_max_pid" {
  description = "The maximum number of processes per pod."
  type        = number
}

variable "default_node_pool_kubelet_config_topology_manager_policy" {
  description = "The topology manager policy."
  type        = string
}

variable "default_node_pool_linux_os_config_swap_file_size_mb" {
  description = "The size of the swap file."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_fs_aio_max_nr" {
  description = "The fs aio max nr."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_fs_file_max" {
  description = "The fs file max."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_fs_inotify_max_user_watches" {
  description = "The fs inotify max user watches."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_fs_nr_open" {
  description = "The fs nr open."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_kernel_threads_max" {
  description = "The kernel threads max."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_core_netdev_max_backlog" {
  description = "The net core netdev max backlog."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_core_optmem_max" {
  description = "The net core optmem max."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_core_rmem_default" {
  description = "The net core rmem default."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_core_rmem_max" {
  description = "The net core rmem max."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_core_somaxconn" {
  description = "The net core somaxconn."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_core_wmem_default" {
  description = "The net core wmem default."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_core_wmem_max" {
  description = "The net core wmem max."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_max" {
  description = "The net ipv4 ip local port range max."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_ip_local_port_range_min" {
  description = "The net ipv4 ip local port range min."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh1" {
  description = "The net ipv4 neigh default gc thresh1."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh2" {
  description = "The net ipv4 neigh default gc thresh2."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_neigh_default_gc_thresh3" {
  description = "The net ipv4 neigh default gc thresh3."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_fin_timeout" {
  description = "The net ipv4 tcp fin timeout."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_intvl" {
  description = "The net ipv4 tcp keepalive intvl."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_probes" {
  description = "The net ipv4 tcp keepalive probes."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_keepalive_time" {
  description = "The net ipv4 tcp keepalive time."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_syn_backlog" {
  description = "The net ipv4 tcp max syn backlog."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_max_tw_buckets" {
  description = "The net ipv4 tcp max tw buckets."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_ipv4_tcp_tw_reuse" {
  description = "Enable TCP time-wait reuse"
  type        = bool
}
variable "default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_buckets" {
  description = "The net netfilter nf conntrack buckets."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_net_netfilter_nf_conntrack_max" {
  description = "The net netfilter nf conntrack max."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_vm_max_map_count" {
  description = "The vm max map count."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_vm_swappiness" {
  description = "The vm swappiness."
  type        = number
}

variable "default_node_pool_linux_os_config_sysctl_config_vm_vfs_cache_pressure" {
  description = "The vm vfs cache pressure."
  type        = number
}

variable "default_node_pool_linux_os_config_transparent_huge_page_defrag" {
  description = "The transparent huge page defrag."
  type        = string
}

variable "default_node_pool_linux_os_config_transparent_huge_page_enabled" {
  description = "The transparent huge page enabled."
  type        = string
}

variable "default_node_pool_fips_enabled" {
  description = "Should FIPS be enabled for this Kubernetes Cluster?"
  type        = bool
}

variable "default_node_pool_kubelet_disk_type" {
  description = "The disk type to use for the VM. Possible values are Ephemeral and Managed. Defaults to Managed."
  type        = string
}

variable "default_node_pool_max_pods" {
  description = "The maximum number of pods that can run on a node."
  type        = number
}

variable "default_node_pool_node_network_profile_allowed_host_ports_port_start" {
  description = "The start port of the range."
  type        = number
}

variable "default_node_pool_node_network_profile_allowed_host_ports_port_end" {
  description = "The end port of the range."
  type        = number
}

variable "default_node_pool_node_network_profile_allowed_host_ports_protocol" {
  description = "The protocol of the range."
  type        = string
}

variable "default_node_pool_node_network_profile_application_security_group_ids" {
  description = "The list of Application Security Group IDs."
  type        = list(string)
}

variable "default_node_pool_node_network_profile_node_public_ip_tags" {
  description = "Tags for the node public IP."
  type        = map(string)
}

variable "default_node_pool_node_public_ip_prefix_id" {
  description = "The ID of the Public IP Prefix."
  type        = string
}

variable "default_node_pool_node_labels" {
  description = "The list of node labels."
  type        = map(string)
}

variable "default_node_pool_only_critical_addons_enabled" {
  description = "Should only critical add-ons be enabled for this Kubernetes Cluster?"
  type        = bool
}

variable "default_node_pool_orchestrator_version" {
  description = "The version of the orchestrator."
  type        = string
}

variable "default_node_pool_os_disk_size_gb" {
  description = "The size of the OS Disk in GB."
  type        = number
}

variable "default_node_pool_os_disk_type" {
  description = "The type of the OS Disk."
  type        = string
}

variable "default_node_pool_os_sku" {
  description = "The SKU of the OS."
  type        = string
}

variable "default_node_pool_pod_subnet_id" {
  description = "The ID of the Pod Subnet."
  type        = string
}

variable "default_node_pool_proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group."
  type        = string
}

variable "default_node_pool_scale_down_mode" {
  description = "The scale down mode."
  type        = string
}

variable "default_node_pool_snapshot_id" {
  description = "The ID of the Snapshot."
  type        = string
}

variable "default_node_pool_temporary_name_for_rotation" {
  description = "The temporary name for rotation."
  type        = string
}

variable "default_node_pool_type" {
  description = "The type of the node pool."
  type        = string
}

variable "default_node_pool_tags" {
  description = "The list of tags."
  type        = map(string)
}

variable "default_node_pool_ultra_ssd_enabled" {
  description = "Should Ultra SSD be enabled for this Kubernetes Cluster?"
  type        = bool
}

variable "default_node_pool_upgrade_settings_drain_timeout_in_minutes" {
  description = "The drain timeout in minutes."
  type        = number
}

variable "default_node_pool_upgrade_settings_node_soak_duration_in_minutes" {
  description = "The node soak duration in minutes."
  type        = number
}

variable "default_node_pool_upgrade_settings_max_surge" {
  description = "The max surge."
  type        = number
}

variable "default_node_pool_vnet_subnet_id" {
  description = "The ID of the VNet Subnet."
  type        = string
}

variable "default_node_pool_workload_runtime" {
  description = "The workload runtime."
  type        = string
}

variable "default_node_pool_zones" {
  description = "The list of zones."
  type        = list(string)
}

variable "default_node_pool_max_count" {
  description = "The maximum number of nodes for the node pool."
  type        = number
}

variable "default_node_pool_min_count" {
  description = "The minimum number of nodes for the node pool."
  type        = number
}

variable "default_node_pool_node_count" {
  description = "The number of nodes for the node pool."
  type        = number
}

variable "aci_connector_linux_subnet_name" {
  description = "The name of the Subnet."
  type        = string

}

variable "api_server_access_profile_authorized_ip_ranges" {
  description = "The list of authorized IP ranges."
  type        = list(string)
}

variable "auto_scaler_profile_balance_similar_node_groups" {
  description = "Should the auto scaler balance similar node groups?"
  type        = bool
}

variable "auto_scaler_profile_daemonset_eviction_for_empty_nodes_enabled" {
  description = "Should the auto scaler evict daemonsets for empty nodes?"
  type        = bool
}

variable "auto_scaler_profile_daemonset_eviction_for_occupied_nodes_enabled" {
  description = "Should the auto scaler evict daemonsets for occupied nodes?"
  type        = bool
}

variable "auto_scaler_profile_expander" {
  description = "The expander."
  type        = string
}

variable "auto_scaler_profile_ignore_daemonsets_utilization_enabled" {
  description = "Should the auto scaler ignore daemonsets utilization?"
  type        = bool
}

variable "auto_scaler_profile_max_graceful_termination_sec" {
  description = "The maximum graceful termination in seconds."
  type        = number
}

variable "auto_scaler_profile_max_node_provisioning_time" {
  description = "The maximum node provisioning time."
  type        = string
}

variable "auto_scaler_profile_max_unready_nodes" {
  description = "The maximum number of unready nodes."
  type        = number
}

variable "auto_scaler_profile_max_unready_percentage" {
  description = "The maximum unready percentage."
  type        = number
}

variable "auto_scaler_profile_new_pod_scale_up_delay" {
  description = "The new pod scale up delay."
  type        = string
}

variable "auto_scaler_profile_scale_down_delay_after_add" {
  description = "The scale down delay after add."
  type        = string
}

variable "auto_scaler_profile_scale_down_delay_after_delete" {
  description = "The scale down delay after delete."
  type        = string
}

variable "auto_scaler_profile_scale_down_delay_after_failure" {
  description = "The scale down delay after failure."
  type        = string
}

variable "auto_scaler_profile_scan_interval" {
  description = "The scan interval."
  type        = string
}

variable "auto_scaler_profile_scale_down_unneeded" {
  description = "Should the auto scaler scale down unneeded?"
  type        = string
}

variable "auto_scaler_profile_scale_down_unready" {
  description = "Should the auto scaler scale down unready?"
  type        = string
}

variable "auto_scaler_profile_scale_down_utilization_threshold" {
  description = "The scale down utilization threshold."
  type        = number
}

variable "auto_scaler_profile_empty_bulk_delete_max" {
  description = "The empty bulk delete max."
  type        = number
}

variable "auto_scaler_profile_skip_nodes_with_local_storage" {
  description = "Should the auto scaler skip nodes with local storage?"
  type        = bool
}

variable "auto_scaler_profile_skip_nodes_with_system_pods" {
  description = "Should the auto scaler skip nodes with system pods?"
  type        = bool
}

variable "azure_active_directory_role_based_access_control_admin_group_object_ids" {
  description = "The list of Azure Active Directory Group Object IDs."
  type        = list(string)
}

variable "azure_active_directory_role_based_access_control_azure_rbac_enabled" {
  description = "Should Azure RBAC be enabled?"
  type        = bool
}

variable "azure_active_directory_role_based_access_control_tenant_id" {
  description = "The Tenant ID."
  type        = string
}

variable "confidential_computing_sgx_quote_helper_enabled" {
  description = "Should the SGX Quote Helper be enabled?"
  type        = bool
}

variable "http_proxy_config_http_proxy" {
  description = "The HTTP Proxy."
  type        = string
}

variable "http_proxy_config_https_proxy" {
  description = "The HTTPS Proxy."
  type        = string
}

variable "http_proxy_config_no_proxy" {
  description = "The No Proxy."
  type        = string
}

variable "identity_type" {
  description = "The type of the identity."
  type        = string
}

variable "identity_identity_ids" {
  description = "The list of identity IDs."
  type        = list(string)
}

variable "ingress_application_gateway_gateway_id" {
  description = "The ID of the Gateway."
  type        = string
}


variable "ingress_application_gateway_gateway_name" {
  description = "The name of the Gateway."
  type        = string
}

variable "ingress_application_gateway_subnet_cidr" {
  description = "The CIDR of the Subnet."
  type        = string
}

variable "ingress_application_gateway_subnet_id" {
  description = "The ID of the Subnet."
  type        = string
}

variable "key_management_service_key_vault_key_id" {
  description = "The ID of the Key."
  type        = string
}

variable "key_management_service_key_vault_network_access" {
  description = "The network access."
  type        = string
}

variable "key_vault_secrets_provider_secret_rotation_enabled" {
  description = "Should the secret rotation be enabled?"
  type        = bool
}

variable "key_vault_secrets_provider_secret_rotation_interval" {
  description = "The secret rotation interval."
  type        = string
}

variable "kubelet_identity_client_id" {
  description = "The Client ID."
  type        = string
}

variable "kubelet_identity_object_id" {
  description = "The Object ID."
  type        = string
}

variable "kubelet_identity_user_assigned_identity_id" {
  description = "The User Assigned Identity ID."
  type        = string
}

variable "linux_profile_admin_username" {
  description = "The admin username."
  type        = string
}

variable "maintenance_window_allowed_day" {
  description = "The allowed day."
  type        = string
}

variable "maintenance_window_allowed_hours" {
  description = "The allowed hours."
  type        = list(number)
}

variable "maintenance_window_not_allowed_end" {
  description = "The not allowed end."
  type        = string
}

variable "maintenance_window_not_allowed_start" {
  description = "The not allowed start."
  type        = string
}

variable "maintenance_window_auto_upgrade_frequency" {
  description = "The auto upgrade frequency."
  type        = string
}

variable "maintenance_window_auto_upgrade_interval" {
  description = "The auto upgrade interval."
  type        = number
}

variable "maintenance_window_auto_upgrade_duration" {
  description = "The auto upgrade duration."
  type        = number
}

variable "maintenance_window_auto_upgrade_day_of_week" {
  description = "The auto upgrade day of week."
  type        = string
}

variable "maintenance_window_auto_upgrade_day_of_month" {
  description = "The auto upgrade day of month."
  type        = number
}

variable "maintenance_window_auto_upgrade_week_index" {
  description = "The auto upgrade week index."
  type        = string
}

variable "maintenance_window_auto_upgrade_start_time" {
  description = "The auto upgrade start time."
  type        = string
}

variable "maintenance_window_auto_upgrade_utc_offset" {
  description = "The auto upgrade UTC offset."
  type        = string
}

variable "maintenance_window_auto_upgrade_start_date" {
  description = "The auto upgrade start date."
  type        = string
}

variable "maintenance_window_auto_upgrade_not_allowed_end" {
  description = "The auto upgrade not allowed end."
  type        = string
}

variable "maintenance_window_auto_upgrade_not_allowed_start" {
  description = "The auto upgrade not allowed start."
  type        = string
}

variable "maintenance_window_node_os_frequency" {
  description = "The node OS frequency."
  type        = string
}

variable "maintenance_window_node_os_interval" {
  description = "The node OS interval."
  type        = number
}

variable "maintenance_window_node_os_duration" {
  description = "The node OS duration."
  type        = number
}

variable "maintenance_window_node_os_day_of_week" {
  description = "The node OS day of week."
  type        = string
}

variable "maintenance_window_node_os_day_of_month" {
  description = "The node OS day of month."
  type        = number
}

variable "maintenance_window_node_os_week_index" {
  description = "The node OS week index."
  type        = string
}

variable "maintenance_window_node_os_start_time" {
  description = "The node OS start time."
  type        = string
}

variable "maintenance_window_node_os_utc_offset" {
  description = "The node OS UTC offset."
  type        = string
}

variable "maintenance_window_node_os_start_date" {
  description = "The node OS start date."
  type        = string
}

variable "maintenance_window_node_os_not_allowed_end" {
  description = "The node OS not allowed end."
  type        = string
}

variable "maintenance_window_node_os_not_allowed_start" {
  description = "The node OS not allowed start."
  type        = string
}



variable "monitor_metrics_annotations_allowed" {
  description = "Should annotations be allowed?"
  type        = bool
}

variable "monitor_metrics_labels_allowed" {
  description = "Should labels be allowed?"
  type        = bool
}

variable "network_profile_network_plugin" {
  description = "The network plugin."
  type        = string
}

variable "network_profile_network_mode" {
  description = "The network mode."
  type        = string
}

variable "network_profile_network_policy" {
  description = "The network policy."
  type        = string
}

variable "network_profile_dns_service_ip" {
  description = "The DNS Service IP."
  type        = string
}

variable "network_profile_network_data_plane" {
  description = "The network data plane."
  type        = string
}

variable "network_profile_network_plugin_mode" {
  description = "The network plugin mode."
  type        = string
}

variable "network_profile_outbound_type" {
  description = "The outbound type."
  type        = string
}

variable "network_profile_pod_cidr" {
  description = "The Pod CIDR."
  type        = string
}

variable "network_profile_pod_cidrs" {
  description = "The list of Pod CIDRs."
  type        = list(string)
}

variable "network_profile_service_cidr" {
  description = "The Service CIDR."
  type        = string
}

variable "network_profile_service_cidrs" {
  description = "The list of Service CIDRs."
  type        = list(string)
}

variable "network_profile_ip_versions" {
  description = "The list of IP Versions."
  type        = list(string)
}

variable "network_profile_load_balancer_sku" {
  description = "The SKU of the Load Balancer."
  type        = string
}

variable "network_profile_load_balancer_profile_backend_pool_type" {
  description = "The backend pool type."
  type        = string
}

variable "network_profile_load_balancer_profile_idle_timeout_in_minutes" {
  description = "The idle timeout in minutes."
  type        = number
}

variable "network_profile_load_balancer_profile_managed_outbound_ip_count" {
  description = "The managed outbound IP count."
  type        = number
}

variable "network_profile_load_balancer_profile_managed_outbound_ipv6_count" {
  description = "The managed outbound IPv6 count."
  type        = number
}

variable "network_profile_load_balancer_profile_outbound_ip_address_ids" {
  description = "The list of outbound IP Address IDs."
  type        = list(string)
}

variable "network_profile_load_balancer_profile_outbound_ip_prefix_ids" {
  description = "The list of outbound IP Prefix IDs."
  type        = list(string)
}

variable "network_profile_load_balancer_profile_outbound_ports_allocated" {
  description = "The outbound ports allocated."
  type        = number
}

variable "network_profile_nat_gateway_profile_idle_timeout_in_minutes" {
  description = "The idle timeout in minutes."
  type        = number
}

variable "network_profile_nat_gateway_profile_managed_outbound_ip_count" {
  description = "The managed outbound IP count."
  type        = number
}

variable "oms_agent_msi_auth_for_monitoring_enabled" {
  description = "Should MSI Authentication for Monitoring be enabled?"
  type        = bool
}


variable "service_mesh_profile_mode" {
  description = "The mode."
  type        = string
}

variable "service_mesh_profile_revisions" {
  description = "Description of service mesh profile revisions"
  type        = list(string)
}

variable "service_mesh_profile_internal_ingress_gateway_enabled" {
  description = "Should the internal ingress gateway be enabled?"
  type        = bool
}

variable "service_mesh_profile_external_ingress_gateway_enabled" {
  description = "Should the external ingress gateway be enabled?"
  type        = bool
}

variable "service_mesh_profile_certificate_authority_key_vault_id" {
  description = "The ID of the Key Vault."
  type        = string
}

variable "service_mesh_profile_certificate_authority_root_cert_object_name" {
  description = "The Root Cert Object Name."
  type        = string
}

variable "service_mesh_profile_certificate_authority_cert_chain_object_name" {
  description = "The Cert Chain Object Name."
  type        = string
}

variable "service_mesh_profile_certificate_authority_cert_object_name" {
  description = "The Cert Object Name."
  type        = string
}

variable "service_mesh_profile_certificate_authority_key_object_name" {
  description = "The Key Object Name."
  type        = string
}

variable "workload_autoscaler_profile_keda_enabled" {
  description = "Should KEDA be enabled?"
  type        = bool
}

variable "workload_autoscaler_profile_vertical_pod_autoscaler_enabled" {
  description = "Should Vertical Pod Autoscaler be enabled?"
  type        = bool
}

variable "service_principal_client_id" {
  description = "The client ID."
  type        = string

}

variable "service_principal_client_secret" {
  description = "The client secret."
  type        = string
}

variable "storage_profile_blob_driver_enabled" {
  description = "Should the Blob Driver be enabled?"
  type        = bool
}

variable "storage_profile_disk_driver_enabled" {
  description = "Should the Disk Driver be enabled?"
  type        = bool
}

variable "storage_profile_file_driver_enabled" {
  description = "Should the File Driver be enabled?"
  type        = bool
}

variable "storage_profile_snapshot_controller_enabled" {
  description = "Should the Snapshot Controller be enabled?"
  type        = bool
}

variable "web_app_routing_dns_zone_ids" {
  description = "The list of DNS Zone IDs."
  type        = list(string)
}

variable "windows_profile_admin_username" {
  description = "The admin username."
  type        = string
}

variable "windows_profile_admin_password" {
  description = "The admin password."
  type        = string
}

variable "windows_profile_license" {
  description = "The license."
  type        = string
}

variable "windows_profile_gmsa_dns_server" {
  description = "The GMSA DNS Server."
  type        = string
}

variable "windows_profile_gmsa_root_domain" {
  description = "The GMSA Root Domain."
  type        = string
}


# LAW Variables

variable "allow_resource_only_permissions" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "local_authentication_disabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "sku" {
  type        = string
  description = "(optional) describe your variable"
}

variable "retention_in_days" {
  type        = number
  description = "(optional) describe your variable"
}

variable "daily_quota_gb" {
  type        = number
  description = "(optional) describe your variable"
}

variable "cmk_for_query_forced" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "internet_ingestion_enabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "internet_query_enabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "reservation_capacity_in_gb_per_day" {
  type        = number
  description = "(optional) describe your variable"
}

variable "data_collection_rule_id" {
  type        = string
  description = "(optional) describe your variable"
}

variable "immediate_data_purge_on_30_days_enabled" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "key_type" {
  description = "Specifies the Key Type to use for this Key Vault Key. Possible values are EC (Elliptic Curve), EC-HSM, RSA and RSA-HSM."
  type = string
}

variable "key_size" {
  description = "Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. Note: This field is required if key_type is RSA or RSA-HSM."
  type = number
    default = 2048
}

variable "curve" {
  description = "Specifies the curve to use when creating an EC key. Possible values are P-256, P-256K, P-384, and P-521. This field will be required in a future release if key_type is EC or EC-HSM. The API will default to P-256 if nothing is specified."
  type = string
}

variable "key_opts" {
  description = "A list of JSON web key operations. Possible values include: decrypt, encrypt, sign, unwrapKey, verify and wrapKey. Please note these values are case sensitive."
  type = list(string)
}

variable "not_before_date" {
  description = "Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z')."
  type = string
}

variable "expiration_date" {
  description = "Expiration UTC datetime (Y-m-d'T'H:M:S'Z')."
  type = string
}

variable "rotation_policy_automatic_time_before_expiry" {
    description = "Specifies the time before the key expires when the key should be automatically rotated."
    type = string
}

variable "rotation_policy_automatic_time_after_creation" {
    description = "Specifies the time after which the key should be automatically rotated."
    type = string
  
}

variable "rotation_policy_expire_after" {
    description = "Specifies the time after which the key should expire."
    type = string
}

variable "rotation_policy_notify_before_expiry" {
    description = "Specifies the time before the key expires when the key should be rotated."
    type = string
}

# key vault access policy variables
variable "certificate_permissions" {
  description = "List of certificate permissions, must be one or more from the following: Backup, Create, Delete, DeleteIssuers, Get, GetIssuers, Import, List, ListIssuers, ManageContacts, ManageIssuers, Purge, Recover, Restore, SetIssuers and Update."
  type = list(string)
}

variable "key_permissions" {
  description = "List of key permissions, must be one or more from the following: Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, Purge, Recover, Restore, Sign, UnwrapKey, Update, Verify, WrapKey, Release, Rotate, GetRotationPolicy and SetRotationPolicy."
  type = list(string)
}


variable "secret_permissions" {
  description = "List of secret permissions, must be one or more from the following: Backup, Delete, Get, List, Purge, Recover, Restore and Set."
  type = list(string)
}

variable "storage_permissions" {
  description = "List of storage permissions, must be one or more from the following: Backup, Delete, DeleteSAS, Get, GetSAS, List, ListSAS, Purge, Recover, RegenerateKey, Restore, Set, SetSAS and Update."
  type = list(string)
}