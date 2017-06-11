#
# Cookbook:: relevance_lab
# Recipe:: web
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
# Install Apache and start the service.
httpd_service 'labs' do
  mpm 'prefork'
  action [:create, :start]
end

# Add the site configuration.
httpd_config 'labs' do
  instance 'labs'
  source 'labs.conf.erb'
  notifies :restart, 'httpd_service[labs]'
end

# Create the document root directory.
directory node['relevance_lab']['document_root'] do
  recursive true
end

# Write the home page.
template "#{node['relevance_lab']['document_root']}/index.php" do
  source 'index.php.erb'
  mode '0644'
  owner node['relevance_lab']['user']
  group node['relevance_lab']['group']
end