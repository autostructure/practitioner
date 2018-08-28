#lab 4.1
class practitioner::hosts {
  resources { 'host':
    purge => true,
  }
  host { 'localhost':
    ensure       => present,
    #host_aliases => 'localhost.localdomain',
  }
}
