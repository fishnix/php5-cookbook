require_relative '../spec_helper'

describe 'php5::module_memcache' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('php5::module_memcache') }
  
  it "installs the php-pecl-memcache package" do
    expect(chef_run).to install_package('php-pecl-memcache')
  end
end