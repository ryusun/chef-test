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

# /* -- add like this
Host melody
  HostName 127.0.0.1
  User <exec sudo nonpassword user>
  Port 22
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile /home/admin/.ssh/id_rsa.pub
  IdentitiesOnly yes
  LogLevel FATAL
# -- */

chmod 644 ~/.ssh/config

# add connect ssh configuration to target hostname at root user

```



