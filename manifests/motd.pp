# Hey f you dude
class practitioner::motd {
  file {'/etc/motd':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => 'practitioner/motd.epp',
    }
}
