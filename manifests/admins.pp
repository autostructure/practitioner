#blah
class practitioner::admins {
  require ::mysql::server

  $fired = 'ralph',
  $admins = {
    'brad'   => { max_queries_per_hour => '600'},
    'monica' => { max_queries_per_hour => '600'},
    'luke'   => { max_queries_per_hour => '600'},
    'zack'   => { max_queries_per_hour => '1200'},
  }
  $admins.each |$user| {
    user {$user:
      ensure => present,
    }
    mysql_user { "${user}@localhost":
      ensure => present,
    }
  }
    user {$fired:
      ensure => absent,
    }
}
