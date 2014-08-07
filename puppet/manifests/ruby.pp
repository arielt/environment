# ----------------------------------------------------------------------------------------------------------------------
# rvm, ruby
# ----------------------------------------------------------------------------------------------------------------------
include rvm

$ruby       = 'ruby-2.0.0-p195'
$app        = 'dev'
$gemset     = "${ruby}@${app}"

# WARNING: set exact users you want to use rvm
rvm::system_user { 
  root: ;
  # nicira: ;
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
}

