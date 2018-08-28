#google
class practitioner::kerberos {
  file {'/etc/chron.allow':
    ensure  => present,
  }
  augeas {'krb5.conf':
    context => '/files/etc/krb5.conf/libdefaults',
    changes => 'set default_realm PUPPETLABS.VM',
}
  }
