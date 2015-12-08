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
default['netapp']['storage_system_ip'] = '10.1.111.11'
default['netapp']['mirror_group']['name'] = 'mirror_group'
default['netapp']['mirror_group']['secondary_array_id'] = 'e9f486b8-8634-4f58-9563-c57561633376'

# Manage Controller Network configuration
default['netapp']['network_configuration']['controllerRef'] = '07001233434353535325555'
default['netapp']['network_configuration']['interfaceRef'] = '28000700312312435434534452000000000000'

# Provide the values for the parameters whose values needs to be updated and keep the rest of the variable values empty
# Variables where value have been already assigned are the default values used when making the REST call.
# Variables enableRemoteAccess,ipv4Enabled, ipv6Enabled can have value as false/true
# Varables ipv4AddressConfigMethod and ipv6AddressConfigMethod can have value configStatic/configDhcp
default['netapp']['network_configuration']['update_parameters'] = { 'enable_RemoteAccess' => false, 'ipv4_Gateway_Address' => '', 'ipv6_Gateway_Address' => '', 'ipv4_Address' => '', 'ipv6_LocalAddress' => '', 'ipv4_Enabled' => false, 'ipv4_Address_ConfigMethod' => 'configDhcp', 'ipv6_Enabled' => false, 'ipv6_Address_ConfigMethod' => 'configStatic' }
