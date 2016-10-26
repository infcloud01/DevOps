# Define a variable with the standard text for a sudoers file
$sudofile = '#Managed by Puppet
#Allow root to run any commands anywhere
root                                      ALL=(ALL)       ALL
%wheel                                    ALL=(ALL)       ALL
ec2-user                                  ALL=(ALL)       NOPASSWD: ALL  
'
#Create the file with the text from the variable above
file { '/etc/sudoers' :
  ensure  => 'file',
  content => $sudofile,
}
