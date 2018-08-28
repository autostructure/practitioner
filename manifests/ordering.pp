#Lab 6.1
class practitioner::ordering {
  include ::practitioner::mysql
  notify { 'This should come after the entire MySQL class is enforced':
    require => Class['practitioner::mysql'],
  }
}
