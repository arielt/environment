# execute 'apt-get update'
exec { 'apt-update':                    # exec resource named 'apt-update'
  command => '/usr/bin/apt-get update'  # command this resource will run
}

# install packages
package { "nodejs":
  require => Exec['apt-update'],
  ensure => "installed"
}

package { "mysql-server":
  require => Exec['apt-update'],
  ensure => "installed"
}

# start services
service { 'mysql':
  ensure => running,
}
