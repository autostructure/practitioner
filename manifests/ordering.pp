#cats
class practitioner::ordering {
  # How do we make sure these classes don't float off the relationship graph? class { '::mysql::server':
  contain mysql::bindings
  contain mysql::server
  notify { 'This should come after the entire MySQL class is enforced':
  require => Class['practitioner::mysql'],
}
}
