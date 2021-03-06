name 'relevance_lab'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures relevance_lab'
long_description 'Installs/Configures relevance_lab'
version '0.1.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/relevance_lab/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/relevance_lab' if respond_to?(:source_url)

#The SELinux (Security Enhanced Linux) cookbook provides recipes for manipulating SELinux policy enforcement state
#Permissive -- Allows access but reports violations
depends 'selinux', '~> 0.9'
#Provides a set of primitives for managing firewalls and associated rules. 
depends 'firewall', '~> 2.5'
#Provides httpd_service, httpd_config, and httpd_module resources
depends 'httpd', '~> 0.4'
