# THE OLD WAY
# /usr/sbin/groupadd -g 2050 sscope2
#/usr/sbin/groupadd -g 902 omsuser
#/usr/sbin/useradd –g 2050 –u 2050 –s /bin/bash –m –d /home/sscope2 sscope2
#/usr/sbin/useradd –g 902 –u 902 –s /bin/bash –m –d /home/omsuser omsuser

user { 'omsuser'  :
  ensure     => 'present',
  managehome => true,
  groups     => [ 'omsuser'],
}

user { [ 'sscope2' ] :
  ensure     => 'present',
  managehome => true,
  groups     => ['sscope2'],
}
