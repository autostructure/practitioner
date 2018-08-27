#lab 2.2
class practitioner::motd {
  file { '/etc/motd':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp('practitioner/motd.epp'),
    # if variables are included in epp file
    # content => epp('practitioner/motd.epp', var1 => value)
  }
}
