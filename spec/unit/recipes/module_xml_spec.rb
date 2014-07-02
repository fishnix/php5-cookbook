require_relative '../spec_helper'

describe 'php5::module_xml' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('php5::module_xml') }
  
  it "installs the php-xml package" do
    expect(chef_run).to install_package('php-xml')
  end
end