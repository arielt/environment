# ----------------------------------------------------------------------------------------------------------------------
# rvm, ruby
# ----------------------------------------------------------------------------------------------------------------------

$ruby       = 'ruby-2.0.0-p643'
$app        = 'dev'
$gemset     = "${ruby}@${app}"

class { '::rvm': }

# WARNING: set exact users you want to use rvm
rvm::system_user { 
  ubuntu: ;
}

# system user for backward compatibility
rvm_system_ruby {
  $ruby: ensure => 'present', default_use => true;
}

rvm_gemset {
  $gemset:
      ensure      => present,
      require     => Rvm_system_ruby[$ruby]
}

# installing gems
rvm_gem {
  "${gemset}/bundler":
    ensure => '1.1.4', require => Rvm_gemset[$gemset];
  "${gemset}/rails":
    require => Rvm_gemset[$gemset];
  "${gemset}/passenger":
    require => Rvm_gemset[$gemset];
}

