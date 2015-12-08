require_relative '../spec_helper'

describe 'netapp_e::network_configuration' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(step_into: ['network_configuration']) do |node|
      node.set['netapp']['network_configuration']['controllerRef'] = '07001233434353535325555'
      node.set['netapp']['storage_system_ip'] = '10.100.2.11'
      node.set['netapp']['network_configuration']['interfaceRef'] = '28000700312312435434534452000000000000'
      node.set['netapp']['network_configuration']['update_parameters'] = { 'enableRemoteAccess' => false, 'ipv4GatewayAddress' => '', 'ipv6GatewayAddress' => '', 'ipv4Address' => '', 'ipv6LocalAddress' => '' }
    end.converge(described_recipe)
  end

  it 'updates the network_configuration through netapp_e_network_configuration' do
    expect(chef_run).to update_netapp_e_network_configuration('network_configuration_update')
  end
end
