def random_password
  require 'securerandom'
  SecureRandom.base64
end

default['firewall']['allow_ssh'] = true
default['firewall']['firewalld']['permanent'] = true
default['relevance_lab']['open_ports'] = 80

default['relevance_lab']['user'] = 'web_admin'
default['relevance_lab']['group'] = 'web_admin'
default['relevance_lab']['document_root'] = '/var/www/public_html'

default['relevance_lab']['host'] = '127.0.0.1'
