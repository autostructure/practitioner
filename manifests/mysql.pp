#Lab 6.1
class practitioner::mysql {
  class { '::mysql::server':
    root_password => 'strongpassword',
  }
  class { '::mysql::bindings':
    php_enable  => true,
    perl_enable => true,
  }

  contain ::mysql::server
  contain ::mysql::bindings
}
