# This manages the aliases class
class system::aliases (
  $admin = 'root',
){
  if $admin !~ String {
    fail('The admin parameter needs to be a string!')
  }
    # uses $admin to build the aliases file
file { '/etc/aliases':
ensure  => file,
owner   => 'root',
group   => 'root',
mode    => '0644',
content => epp('system/aliases.epp', { admin => $admin }),
}
exec { '/usr/bin/newaliases':
  refreshonly => true,
  subscribe   => File['/etc/aliases'],
}
user { 'admin':
ensure => present,
}
class { 'system::aliases':
admin   => 'admin',
require => User['admin'],
}

}
