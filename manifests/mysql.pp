#blah
class { '::mysql::server':
  root_password => 'strongpassword',
},
class { '::mysql::bindings':
  php_enable  => true,
  perl_enable => true,
},
