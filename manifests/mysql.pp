#blah
class practitioner::mysql {
  class { '::mysql::server':
    root_password => 'weakpassword',
}
  class { '::mysql::bindings':
    php_enable  => true,
    perl_enable => true,
}
contain mysql::bindings
contain mysql::server
}
