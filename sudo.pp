$sudofile = '#Managed by Puppet
#Allow root to run any commands anywhere
root    ALL=(ALL)       ALL
%wheel  ALL=(ALL)       ALL
ec2-user        ALL=(ALL)       NOPASSWD: ALL 
'

file { '/etc/sudoers' :
  ensure  => 'file',
  content => $sudofile,
}
