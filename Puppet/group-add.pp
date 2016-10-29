#Add groups below to create
group { 'infcloud01':
ensure => 'present',
gid    => '1996',
}
group { 'infcloud02':
ensure => 'present',
gid    => '1978',
}
