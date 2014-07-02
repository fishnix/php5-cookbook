require_relative '../spec_helper'

describe 'php5::module_gd' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('php5::module_gd') }
  
  it "installs the php-gd package" do
    expect(chef_run).to install_package('php-gd')
  end
end