require_relative '../spec_helper'

describe 'php5::module_apc' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('php5::module_apc') }
  
  it "installs the php-pecl-apc package" do
    expect(chef_run).to install_package('php-pecl-apc')
  end
end