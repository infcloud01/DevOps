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
