# THE OLD WAY
# /usr/sbin/groupadd -g 2050 sscope2
#/usr/sbin/groupadd -g 902 omsuser
#/usr/sbin/useradd –g 2050 –u 2050 –s /bin/bash –m –d /home/sscope2 sscope2
#/usr/sbin/useradd –g 902 –u 902 –s /bin/bash –m –d /home/omsuser omsuser

#Add users below to create
user { ['infcloud01']  :
  ensure     => 'present',
  uid        => '1996',
  managehome => true,
  groups     => [ 'infcloud01'],
  password   => pw_hash('ChangeM3', 'SHA-512','random'),
  gid        => '1996',
  shell      => '/bin/bash',
}
user { [ 'infcloud02' ] :
  ensure     => 'present',
  uid        => '1978',
  managehome => true,
  groups     => ['infcloud02'],
  password   => pw_hash('ChangeM3', 'SHA-512','random'),
  gid        => '1978',
  shell      => '/bin/bash',
}
