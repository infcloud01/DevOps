# THE OLD WAY
# /usr/sbin/groupadd -g 2050 sscope2
#/usr/sbin/groupadd -g 902 omsuser
#/usr/sbin/useradd –g 2050 –u 2050 –s /bin/bash –m –d /home/sscope2 sscope2
#/usr/sbin/useradd –g 902 –u 902 –s /bin/bash –m –d /home/omsuser omsuser

#Add groups below to create
group { 'infcloud01':
ensure => 'present',
gid    => '1996',
}
group { 'infcloud02':
ensure => 'present',
gid    => '1978',
}
