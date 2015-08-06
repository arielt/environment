class {'passenger':
    passenger_version      => '5.0.15',
    passenger_provider     => 'gem',
    passenger_package      => 'passenger',
    gem_path               => '/home/ubuntu/.rvm/gems/ruby-2.0.0-p643',
    gem_binary_path        => '/home/ubuntu/.rvm/gems/ruby-2.0.0-p643/bin',
    passenger_root         => '/home/ubuntu/.rvm/gems/ruby-2.0.0-p643/gems/passenger-5.0.15',
    mod_passenger_location => '/usr/lib/apache2/modules/mod_passenger.so',
    include_build_tools    => true,
  }
