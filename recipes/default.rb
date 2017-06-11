#
# Cookbook:: relevance_lab
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'selinux::permissive'    # Allows access but reports violations. manipulating SELinux policy enforcement state
include_recipe 'relevance_lab::firewall'
include_recipe 'relevance_lab::web_user'
include_recipe 'relevance_lab::web'
