require_relative '../spec_helper'

describe 'php5::default' do
  let (:chef_run) { ChefSpec::Runner.new(platform: 'centos', version: '6.5').converge('php5::default') }
  
  %w(php php-cli php-common php-Smarty).each do |p|
    it "installs the #{p} package" do
      expect(chef_run).to install_package(p)
    end
  end
  
  it 'includes module_apc recipe' do
    expect(chef_run).to include_recipe('php5::module_apc')
  end
  
  it 'includes module_mysql recipe' do
    expect(chef_run).to include_recipe('php5::module_mysql')
  end

  it 'includes module_gd recipe' do
    expect(chef_run).to include_recipe('php5::module_gd')
  end

  it 'includes module_memcache recipe' do
    expect(chef_run).to include_recipe('php5::module_memcache')
  end

  it 'creates /etc/php.ini' do
    expect(chef_run).to render_file('/etc/php.ini')
  end
  
  it 'restarts apache httpd when /etc/php.ini updates' do
    resource = chef_run.template('/etc/php.ini')
    expect(resource).to notify('service[apache2]').to(:restart).delayed
  end
end