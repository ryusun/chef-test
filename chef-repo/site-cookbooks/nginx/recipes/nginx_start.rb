
#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "chown" do
	 code <<-EOH
	 sudo chown -R root:nginx /usr/local/nginx
	 sudo chmod -R g+x /usr/local/nginx
	 EOH
end


service "nginx" do
	 supports :status=>true, :restart=>true, :reload=>true
	 action [:enable,:start]
end


