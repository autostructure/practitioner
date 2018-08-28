#bleh
class practitioner::classroom {
@@host { $::fqdn:
  ensure       => 'present',
  ip           => $::ipaddress,
  host_aliases => $::hostname,
  tag          => 'classroom',
}
# collect all exported resources and realize them on this host
Host<<| tag == 'classroom' |>>
  resources { 'host':
  purge => true,
}
}
