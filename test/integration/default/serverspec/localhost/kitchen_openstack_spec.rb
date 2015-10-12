require_relative '../spec_helper'

describe file("#{$node['pw_chefdk']['kitchen']['userhome']}/.chefdk/gem/ruby/2.1.0/gems/kitchen-openstack-1.8.1/Gemfile") do
  it { should exist }
end

describe file("#{$node['pw_chefdk']['kitchen']['userhome']}/.kitchen/config.yml") do
  it { should exist }
  its(:content) { should match /openstack_api_key: #{$node['pw_chefdk']['kitchen']['os_pass']}/ }
  its(:content) { should match /openstack_auth_url: #{$node['pw_chefdk']['kitchen']['os_url']}\/tokens/ }
end
