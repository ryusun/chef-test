chef-test  
=========  

chef-solo test on vagrant  

=========  
usage  

```text
git clone https://github.com/ryusun/chef-test.git 

#install ruby over 1.9.3
cd chef-test  
sudo ./setup_rbenv.sh EXEC_USER  

rbenv install ${ruby version over 1.9.3}  

rbenv rehash

rbenv global ${ruby version over 1.9.3}  

gem install bundler chef knife-solo --no-ri --no-rdoc


# set ssh
 touch ~/.ssh/config
# /* -- add like this 
vi ~/.ssh/config

# paste below
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

chmod 600 ~/.ssh/config

scp ~/.ssh/id_rsa.pub <target hostname>:/tmp


# from change operation to target host side
cat /tmp/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh

# return chef exec side.

cd chef-test
knife solo prepare <target hostname or IP ex) root@192.168.11.31>  

knife solo cook <target hostname or IP ex) root@192.168.11.31>  


```



