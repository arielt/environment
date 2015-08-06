class { 'phpldapadmin':
  ldap_host      => 'localhost',
  ldap_suffix    => 'dc=foo,dc=example.com',
  ldap_bind_id   => 'cn=admin,dc=foo,dc=example.com',
  ldap_bind_pass => 'password',
}
