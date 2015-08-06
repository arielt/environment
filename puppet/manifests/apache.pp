
class{  'apache': 
  default_mods => true,
  default_vhost => false,
  default_ssl_vhost => false, 
}

include apache::mod::passenger

apache::vhost { 'ms':
  port        => '80',
  docroot     => '/home/ubuntu/ms/public',
  directories => [
    { path              => '/home/ubuntu/ms/public',
      passenger_enabled => 'on',
    },
  ],
}
