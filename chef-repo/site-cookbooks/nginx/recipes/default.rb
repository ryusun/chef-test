#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# install git
package "git" do
	 action :install
end

package "gcc" do 
	 action :install
end

package "pcre" do 
	 action :install
end

package "pcre-devel" do 
	 action :install
end

package "openssl" do 
	 action :install
end

package "openssl-devel" do 
	 action :install
end

package "gd" do 
	 action :install
end

package "gd-devel" do 
	 action :install
end

package "libpng" do 
	 action :install
end


package "libpng-devel" do 
	 action :install
end

package "libjpeg" do 
	 action :install
end

package "libjpeg-devel" do 
	 action :install
end

package "libxml" do 
	 action :install
end

package "libxml-devel" do 
	 action :install
end

package "libxslt" do 
	 action :install
end

package "libxslt-devel" do 
	 action :install
end

# git clone nginx 
bash "git-clone-nginx" do
	 user "root"
	 code <<-EOC
	mkdir -p ~/src
	 git clone https://github.com/nginx/nginx.git ~/src/nginx
	 cd ~/src/nginx 
	 git checkout -b v1.4.4 refs/tags/v1.4.4
	 ./configure --user=nginx --group=nginx --with-http_ssl_module --with-http_realip_module --with-http_addition_module --with-http_xslt_module --with-http_image_filter_module --with-http_sub_module --with-http_dav_module --with-http_flv_module --with-http_gzip_static_module --with-http_random_index_module --with-http_secure_link_module --with-http_stub_status_module
	
	 make
	 make install
	 ln -s /usr/local/nginx/sbin/nginx /sbin/nginx
	 EOC
end

#service "nginx" do
#	 supports :status=>true, :restart=>true, :reload=>true
#	 action[:enable , :start]
#end


#templates "nginx.conf" do
#	 path "/etc/nginx/nginx.conf"
#	 source "nginx.conf.erb"
#	 owner "root"
#	 group "root"
#	 mode 0644
#	 notifies :reload, 'service[nginx]"
#end

