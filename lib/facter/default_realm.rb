# hi
Facter.add('default_realm') do
  awk '/default_realm/{print $NF}' / etc / krb5.conf
end
