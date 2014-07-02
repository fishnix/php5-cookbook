require_relative '../spec_helper'

describe 'php5::module_mysql' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('php5::module_mysql') }
  
  it "installs the php-mysql package" do
    expect(chef_run).to install_package('php-mysql')
  end
end