#
# Cookbook Name:: initscript
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "initd_nginx" do
	 path "/etc/rc.d/init.d/nginx"
	 source "nginx.erb"
	 owner "root"
	 group "root"
	 mode 0755

end

