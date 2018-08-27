# Lab 2.2
class practitioner::review (
  $user='review'
){
  include ::practitioner::motd

  $homedir=$user?{
    'root'  => '/root',
    default => "/home/$(user)",
    #double quotes needed for string interpolation
  }

  user{$user:
    ensure     => present,
    shell      => '/bin/bash',
    managehome => true,
  }
  # Wanted for lab, but file already exists
  # file { "${homedir}/.bashrc":
  #   ensure => file,
  #   owner  => $user,
  #   group  => $user,
  #   mode   => '0644',
  #   source => 'puppet:///modules/review/bashrc',
  # }
  # Wanted for lab, but commented out to avoid stopping puppet
  # service { 'puppet':
  #   ensure => stopped,
  #   enable => false,
  # }
}
