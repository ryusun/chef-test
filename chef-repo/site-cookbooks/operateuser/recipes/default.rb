#
# Cookbook Name:: operateuser
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Groupadd
group "nginx" do
	 group_name "nginx"
	 gid 403
	 action :create
end


# Useradd
user "nginx" do
	 comment "nginx"
	 uid 403
	 group 'nginx'
	 home '/usr/local/nginx'
	 shell '/bin/false'
	 password nil
	 supports :manage_home => true
	 action [:create,:manage]
end


