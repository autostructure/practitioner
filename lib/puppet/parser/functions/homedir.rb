#homedir function
module Puppet::Parser::Functions
  newfunction(:homedir,
              :type => :rvalue,
              :airty => 1) do |args|
    user = args[0]
    raise ArgumentError, "Expects a string" unless user.class == String
    case user
      when 'root'
        return '/root'
      else
        return "/home/#{user}"
    end
  end
end
