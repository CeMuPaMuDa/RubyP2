# frozen_string_literal: true

require_relative 'lib/building'

house = Building.new

house.num_of_floor = 5

house.type_of_cnstr = 'железобетон'

house.type_of_building = 'торговый центр'

puts "Этажей: #{house.num_of_floor}"
puts "Материал: #{house.type_of_cnstr}"
puts "Тип здания: #{house.type_of_building}"
