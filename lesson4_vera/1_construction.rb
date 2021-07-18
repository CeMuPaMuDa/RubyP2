# frozen_string_literal: true

require_relative 'lib/building'

house = Building.new
print 'Введите количество этажей в здании: '
num = gets.to_i
num = 1 if num.zero? || num.negative?
house.num_of_floor = num
print 'Из чего строим?: '
house.type_of_cnstr = gets.chomp
print 'Введите тип здания (офис, жилой дом, дача, магазин...): '
house.type_of_building = gets.chomp

puts 'Заказано строительство здания:'
puts "     Этажей: #{house.num_of_floor}"
puts "     Материал: #{house.type_of_cnstr}"
puts "     Тип здания: #{house.type_of_building}"
