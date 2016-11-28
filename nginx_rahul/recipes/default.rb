#
# Cookbook Name:: nginx_rahul
# Recipe:: default
# Author:: Rahul Kancharla <rahulkandy9090@gmail.com>
include_recipe 'nginx_rahul::package'

cookbook_file '/usr/share/nginx/html/index.html' do
source 'index.html'
end
service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action   :start
end

 