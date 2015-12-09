
netapp_e_mirror_group node['netapp']['mirror_group']['name']  do
  storage_system node['netapp']['storage_system_ip']
  secondary_array_id node['netapp']['mirror_group']['secondary_array_id']
  sync_interval_minutes node['netapp']['mirror_group']['sync_interval_minutes']
  manual_sync node['netapp']['mirror_group']['manual_sync']
  recovery_warn_threshold_minutes node['netapp']['mirror_group']['recovery_warn_threshold_minutes']
  repo_utilization_warn_threshold node['netapp']['mirror_group']['repo_utilization_warn_threshold']
  syncWarn_threshold_minutes node['netapp']['mirror_group']['syncWarn_threshold_minutes']
  action :create
end

netapp_e_mirror_group node['netapp']['mirror_group']['name'] do
  storage_system node['netapp']['storage_system_ip']
  action :delete
end
