require 'singleton'
class Alone
  include Singleton
end

s1 = Alone.instance
puts s1
s2 = Alone.instance
puts s2

puts s2.equal?(s1)