#
# Cookbook:: relevance_lab
# Recipe:: web_user
#
# Copyright:: 2017, The Authors, All Rights Reserved.
group node['relevance_lab']['group']

user node['relevance_lab']['user'] do
  group node['relevance_lab']['group']
  system true
  shell '/bin/bash'
end
