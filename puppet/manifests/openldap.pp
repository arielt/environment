class { 'openldap::server': }
openldap::server::database { 'dc=example,dc=com':
  directory => '/var/lib/ldap',
  rootdn    => 'cn=admin,dc=example,dc=com',
  rootpw    => 'secret',
}
