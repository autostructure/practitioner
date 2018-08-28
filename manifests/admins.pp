#lab 5.2
class practitioner::admins{
  require ::mysql::server
  $users = {
    'zack' => {
      'ensure'               => present,
      'max_queries_per_hour' => 1200,
    },
    'monica' => {
      'ensure'               => present,
      'max_queries_per_hour' => 600,
    },
    'ralph' => {
      'ensure'               => absent,
      'max_queries_per_hour' => undef,
    },
    'brad' => {
      'ensure'               => present,
      'max_queries_per_hour' => 600,
    },
    'luke' => {
      'ensure'               => present,
      'max_queries_per_hour' => 600,
    },
  }
  $users.each |String $username, Hash $attributes| {
    mysql_user { "${username}@localhost":
      ensure               => $attributes['ensure'],
      max_queries_per_hour => $attributes['max_queries_per_hour'],
    }
  }
  $users.each |String $username, Hash $attributes| {
    user { $username:
      ensure => $attributes['ensure'],
    }
  }
}
# Solutions
# $retired = [ 'ralph' ]
# $admins = {
# 'brad' => { max_queries_per_hour => '600' },
# 'monica' => { max_queries_per_hour => '600' },
# 'luke' => { max_queries_per_hour => '600' },
# 'zack' => { max_queries_per_hour => '1200' },
# }
# $admins.each |$user, $params| {
# mysql_user { "${user}@localhost":
# ensure => present,
# max_queries_per_hour => $params['max_queries_per_hour'],
# }
# user { $user:
# ensure => present,
# managehome => true,
# }
# }
# $retired.each |$user| {
# mysql_user { "${user}@localhost":
# ensure => absent,
# }
# user { $user:
# ensure => absent,
# }
# }
# }
