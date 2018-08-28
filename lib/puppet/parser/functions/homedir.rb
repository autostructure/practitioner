# duck
module Puppet::Parser::Functions
  newfunction(:homedir,
    :type  => rvalue,
    :arity => 1,
  ) do |args|
    user = args[0]
  raise ArgumentError, "Expects a string" unless user.class == String
    end
end
