#
# Cookbook Name:: nginx_rahul
# Recipe:: package
# Author:: Rahul Kancharla <rahulkandy9090@gmail.com>


include_recipe 'yum-epel'
package node['nginx']['package_name'] do
  action :install
end

template 'nginx.conf' do
  path   "#{node['nginx']['dir']}/nginx.conf"
  source 'nginx.conf.erb'
  owner  'root'
  group  node['root_group']
  mode   '0644'
end