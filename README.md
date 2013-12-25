chef-test  
=========  

chef-solo test on vagrant  

=========  
usage  

```text
git clone https://github.com/ryusun/chef-test.git 

#install ruby over 1.9.3
gem install bundler chef knife-solo --no-ri --no-rdoc

cd chef-test
knife solo prepare <target hostname>

# set ssh
touch ~/.ssh/config
chmod 644 ~/.ssh/config

# add connect ssh configuration to target hostname at root user

```



