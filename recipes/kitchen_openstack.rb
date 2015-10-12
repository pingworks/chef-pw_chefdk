bash 'install kitchen-openstack' do
  user node['pw_chefdk']['kitchen']['user']
  cwd node['pw_chefdk']['kitchen']['userhome']
  code <<-EOC
  export HOME=#{node['pw_chefdk']['kitchen']['userhome']}
  eval "$(chef shell-init bash)"
  chef gem install kitchen-openstack:1.8.1
  EOC
  not_if "test -f #{node['pw_chefdk']['kitchen']['userhome']}/.chefdk/gem/ruby/2.1.0/gems/kitchen-openstack-1.8.1/Gemfile"
end

directory "#{node['pw_chefdk']['kitchen']['userhome']}/.kitchen" do
  owner node['pw_chefdk']['kitchen']['user']
  group node['pw_chefdk']['kitchen']['group']
  mode '755'
end

template "#{node['pw_chefdk']['kitchen']['userhome']}/.kitchen/config.yml" do
  source 'kitchen-openstack-config-yml.erb'
  owner node['pw_chefdk']['kitchen']['user']
  group node['pw_chefdk']['kitchen']['group']
  mode '644'
end
