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

cookbook_file "/usr/local/nginx/conf/cert.pem" do
	 source "cert.pem"
	 owner "root"
	 group "root"
	 mode 0644
end

cookbook_file "/usr/local/nginx/conf/csr.pem" do
	 source "csr.pem"
	 owner "root"
	 group "root"
	 mode 0644
end

cookbook_file "/usr/local/nginx/conf/server.key" do
	 source "server.key"
	 owner "root"
	 group "root"
	 mode 0644
end

template "/usr/local/nginx/conf/nginx.conf" do
	 path "/usr/local/nginx/conf/nginx.conf"
	 source "nginx.conf.erb"
	 owner "root"
	 group "root"
	 mode 0644
#	 notifies :reload, 'service[nginx]'
end
