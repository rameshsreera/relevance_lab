#
# Cookbook:: relevance_lab
# Recipe:: firewall
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'firewall::default'

ports = node['relevance_lab']['open_ports']
firewall_rule "open ports #{ports}" do
  port ports
end

firewall 'default' do
  action :save
end
