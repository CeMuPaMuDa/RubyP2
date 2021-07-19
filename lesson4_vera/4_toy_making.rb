# frozen_string_literal: true

require_relative 'lib/factory'

toys_factory_ru = Factory.new
toys_factory_ua = Factory.new

13.times { toys_factory_ru.build(:teddy_bear) }
16.times { toys_factory_ru.build(:ball) }
23.times { toys_factory_ru.build(:cube) }

11.times { toys_factory_ua.build(:teddy_bear) }
6.times { toys_factory_ua.build(:ball) }
34.times { toys_factory_ua.build(:cube) }

puts "Создано #{Factory.total} игрушек"
puts 'Список всех игрушек: '
puts Factory.offers
