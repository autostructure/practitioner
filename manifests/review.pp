# This is supposed to be its own module but screw it
class practitioner::review (
  $user = 'review',
  ){
    $homedir = $user?{
      'root'     => '/root',
      default    => "/home/${user}",
    }
    user {$user:
      ensure     => present,
      shell      => '/bin/bash',
      managehome => true,
    }
    file {"${homedir}/.bashrc":
      ensure => file,
      owner  => $user,
      group  => $name,
      mode   => '0644',
      source => 'puppet:///modules/review/bashrc',
}
service { 'puppet':
  ensure => stopped,
  enable => false,
}
}
