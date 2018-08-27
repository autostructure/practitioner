#hey screw u
class practitioner::hosts{
  resources {'host':
    purge => true,
  }
  host { 'localhost':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}

}
