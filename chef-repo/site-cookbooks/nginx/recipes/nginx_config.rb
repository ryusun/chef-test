#
# Cookbook Name:: nginx
# Recipe:: nginx_config
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# set configuration files

directory "/usr/local/nginx/conf" do
	 mode 0644
	 action :create
end

template "nginx.conf" do
	 path "/usr/local/nginx/conf/nginx.conf"
	 source "nginx.conf.erb"
	 owner "root"
	 group "root"
	 mode 0644
#	 notifies :reload, 'service[nginx]'
end
