####################################################
#This is a setup script for the standard OL6.7 image
#export ftp_proxy="http://proxy.inbcu.com:80"
#export http_proxy="http://proxy.inbcu.com:80"
#export https_proxy="http://proxy.inbcu.com:80"
####################################################
#Set the proxy information for web requests
echo "ftp_proxy=http://proxy.inbcu.com:80; export ftp_proxy" >> /etc/bashrc
echo "http_proxy=http://proxy.inbcu.com:80; export http_proxy" >> /etc/bashrc
echo "https_proxy=http://proxy.inbcu.com:80; export https_proxy" >> /etc/bashrc
echo 'PATH=$PATH:$HOME/bin:/opt/puppetlabs/bin:/root/servicedelivery-devops' >> /root/.bash_profile
#####################################################
#Install Puppet package
yum -y install nss
sudo rpm -ivh http://rpmfind.net/linux/centos/6.8/updates/x86_64/Packages/java-1.8.0-openjdk-headless-1.8.0.111-0.b15.el6_8.x86_64.rpm
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
#redhat 7.x
#rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum install -y ruby
sudo yum install -y puppetserver
sudo puppet module install theurbanpenguin/puppet_vim
sudo puppet apply -e " include puppet_vim "
sudo puppet module install puppetlabs-lvm
#####################################################
#Clone Git Repository  
git clone https://infcloud01@github.com/infcloud01/servicedelivery-devops.git
#git clone git@github.inbcu.com:ServiceDelivery/SD-DevOps.git 
#git remote set-url origin "https://infcloud01@github.com/infcloud01/DevOps.git"
sudo yum install -y tree
