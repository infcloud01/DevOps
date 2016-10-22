#This is a setup sctipt for the standard OL6.7 image
export ftp_proxy="http://proxy.inbcu.com:80"
export http_proxy="http://proxy.inbcu.com:80"
export https_proxy="http://proxy.inbcu.com:80"
echo 'PATH=$PATH:$HOME/bin:/opt/puppetlabs/bin:/root/DevOps/' >> /root/.bash_profile

#Install Puppetlabs
rpm -ivh ftp://rpmfind.net/linux/centos/6.8/updates/x86_64/Packages/java-1.8.0-openjdk-headless-1.8.0.111-0.b15.el6_8.x86_64.rpm
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
sudo yum install -y puppetserver
#Clone Git Repository
git clone git@github.inbcu.com:ServiceDelivery/SD-DevOps.git
git remote set-url origin "https://infcloud01@github.com/infcloud01/DevOps.git"

