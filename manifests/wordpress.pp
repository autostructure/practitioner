#Lab 9.1
class practitioner::wordpress {
  include ::wordpress
  class { '::practitioner::webapp':
    app_name => 'wordpress',
    docroot  => '/opt/wordpress',
  }
}
