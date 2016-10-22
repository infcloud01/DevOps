#Install vim
yum install -y vim
#Install git
yum install -y git
#Install powershell
sudo yum install -y https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.10/powershell-6.0.0_alpha.10-1.el7.centos.x86_64.rpm
#Install puppetlabs
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum install -y puppetserver
#vim module for puppet
puppet module install theurbanpenguin/puppet_vim
puppet apply -e " include puppet_vim "
#Clone Git Repository  
git clone https://github.com/infcloud01/DevOps.git 
cd DevOps

