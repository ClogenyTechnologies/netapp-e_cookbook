# Mandatory Parameters

default['netapp']['https'] = false
default['netapp']['user'] = 'rw'
default['netapp']['password'] = 'rw'
default['netapp']['fqdn'] = 'localhost'
default['netapp']['basic_auth'] = true
default['netapp']['asup'] = true
default['netapp']['autoupdate'] = true

# Sample values
# For Linux
default['netapp']['installation_directory'] = '/opt/netapp/santricity_web_services_proxy'
default['netapp']['installer']['source_url'] = 'https://example.com/webservice-01.30.7000.0002.bin'

# For Windows
# default['netapp']['installation_directory'] = 'C://Program Files//NetApp//SANtricity Web Services Proxy'
# default['netapp']['installer']['source_url'] = 'https://example.com/webservice-01.30.3000.0003.exe'

default['netapp']['port'] = 8080
default['netapp']['ssl_port'] = 8443

############ timeout (optional) ######################
# default['netapp']['api']['timeout'] = 60000

# mirror group
default['netapp']['storage_system_ip'] = '10.113.1.18'
default['netapp']['mirror_group']['name'] = 'mirror_group'
default['netapp']['mirror_group']['secondary_array_id'] = 'e9f486b8-8634-4f58-9563-c57561633376'

# volume group
default['netapp']['volume_group']['name'] = 'volume_group'
default['netapp']['volume_group']['disk_drive_id'] = ['010000005001E8200002D1880000000000000000']
default['netapp']['volume_group']['raid_level'] = '0'

# volume
default['netapp']['volume']['name'] = 'MyVolume'
default['netapp']['volume']['pool_id'] = '0400000060080E50001F69B400000C9E565D3F33'
default['netapp']['volume']['size_unit'] = 'bytes'
default['netapp']['volume']['size'] = 1048576
default['netapp']['volume']['segment_size'] = 128
