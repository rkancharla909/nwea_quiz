#
# Cookbook Name:: nginx_rahul
# Attributes:: default

default['nginx']['package_name'] = 'nginx'
default['nginx']['port']         = '8888'
default['nginx']['dir']          = '/etc/nginx'
default['nginx']['script_dir']   = '/usr/sbin'
default['nginx']['log_dir']      = '/var/log/nginx'
default['nginx']['user']        = 'nginx'
default['nginx']['init_style']  = 'init'
default['nginx']['repo_source'] = 'epel'