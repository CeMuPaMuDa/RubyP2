require_relative 'lib/building'
house = Building.new
print 'Введите количество этажей в здании: '
num = gets.to_i
  if num.zero? ||num.negative?
  num = 1
  end
house.num_of_floor = num
print 'Из чего строим?: '
house.type_of_cnstr = gets.chomp
print 'Введите тип здания (офис, жилой дом, дача, магазин...): '
house.type_of_building = gets.chomp

puts 'Заказано строительство здания:'
puts "     Этажей: #{house.num_of_floor}"
puts "     Материал: #{house.type_of_cnstr}"
puts "     Тип здания: #{house.type_of_building}"