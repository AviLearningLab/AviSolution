#
# Cookbook Name:: AviSolution
# Recipe:: default
#
# Copyright (C) 2014 Adam Leonard
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apache2"

cookbook_file "index.html" do
  path "/var/www/html/index.html"
  owner "root"
  group "root"
  action :create_if_missing
end

apache_site "default" do 
enable true
end

service "apache2" do
  action :restart
end