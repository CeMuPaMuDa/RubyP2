require_relative 'lib/factory'

toys_factory = Factory.new

13.times {toys_factory.build(:teddy_bear)}
16.times {toys_factory.build(:ball)}
23.times {toys_factory.build(:cube)}

puts "Создано #{Factory.count} игрушек"
puts 'Список всех игрушек: '
puts Factory.all