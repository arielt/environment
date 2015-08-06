class { 'phpldapadmin':
  ldap_host      => 'localhost',
  ldap_suffix    => 'dc=example,dc=com',
  ldap_bind_id   => 'cn=admin,dc=example,dc=com',
  ldap_bind_pass => 'secret',
}
