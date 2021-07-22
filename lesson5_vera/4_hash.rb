# frozen_string_literal: true

require_relative 'lib/foo'
ENG_RU = { i: 'я', you: 'ты', we: 'мы' }.freeze
translate = Foo.new(ENG_RU)

puts translate.i
puts translate.you
puts translate.we
puts translate.he
puts translate.respond_to? :she
puts translate.they if translate.respond_to? :they
