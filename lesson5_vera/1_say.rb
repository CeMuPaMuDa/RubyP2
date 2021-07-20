# frozen_string_literal: true

require_relative 'lib/hello'

say1 = Hello.new('world')
say2 = Hello.new('Vera')
say3 = Hello.new('Igor')

puts say1.say, say2.say, say3.say
