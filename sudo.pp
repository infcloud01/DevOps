$sudofile = '#Managed by Puppet
#Allow root to run any commands anywhere
root    ALL=(ALL)       ALL
%wheel  ALL=(ALL)       ALL
ec2-user        ALL=(ALL)       NOPASSWD: ALL 
%ADL-SR_NBCU-IT_WEB_UNIX_Localadmin ALL=(ALL) NOPASSWD: ALL
omsuser ALL=(ALL)       NOPASSWD: ALL
'

file { '/etc/sudoers' :
  ensure  => 'file',
  content => $sudofile,
}
