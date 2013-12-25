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

package "libxml2" do 
	 action :install
end

package "libxml2-devel" do 
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
	 $nginx=v1.4.4
	 [ -d ~/src ] || mkdir -p ~/src
	 [ -e ~/src/nginx/configure ] || 	 git clone https://github.com/nginx/nginx.git ~/src/nginx
	 cd ~/src/nginx

	 if git branch -v | grep $nginx; then
		 echo branch already exists;
	 else
		 git checkout -b v1.4.4 refs/tags/$nginx;
	 fi 	 
	 [ -e ~/src/nginx/Makefile ] && echo 'Already installed ngxinx' && exit ;
	 
	 ./configure --user=nginx --group=nginx --with-http_ssl_module --with-http_realip_module --with-http_addition_module --with-http_xslt_module --with-http_image_filter_module --with-http_sub_module --with-http_dav_module --with-http_flv_module --with-http_gzip_static_module --with-http_random_index_module --with-http_secure_link_module --with-http_stub_status_module
	
	 make
	 make install
	 [ -h /sbin/nginx ] || ln -s /usr/local/nginx/sbin/nginx /sbin/nginx
	 EOC
end

