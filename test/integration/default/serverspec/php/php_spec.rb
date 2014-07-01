require 'spec_helper'

describe package('php') do
  it { should be_installed }
end

describe package('php-cli') do 
  it { should be_installed }
end

describe package('php-common') do
  it { should be_installed } 
end

describe package('php-Smarty') do
  it { should be_installed }
end

describe file('/etc/php.ini') do
  it { should be_file }
end