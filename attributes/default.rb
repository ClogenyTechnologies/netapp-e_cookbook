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

default['netapp']['storage_system_ip'] = '127.0.0.1'

# mirror group
default['netapp']['mirror_group']['name'] = 'mirror_group'
default['netapp']['mirror_group']['secondary_array_id'] = 'e9f486b8-8634-4f58-9563-c57561633376'

# host group
default['netapp']['host_group']['name'] = 'testy_host_group'
# default['netapp']['host_group']['hosts'] = ['8400000060080E50001F6D3800300DFE565E8364','8400000060080E50001F69B400300EDE565E8283'] # optional parameter
