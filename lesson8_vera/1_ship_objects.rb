# frozen_string_literal: true

require_relative 'lib/submarine_classes'
require_relative 'lib/surface_ship_classes'

SHIPS = [NuclearSubmarine, DryCargoShip, ContainerShip, OilTanker, MissileCruiser, MilitarySurfaceShip].freeze

# создание обьектов
my_ship = SHIPS.each(&:new)
puts my_ship

# пример создания одного обьекта с методами
borey = NuclearSubmarine.new
borey.max_length = 170
borey.max_width = 13.5
borey.max_speed = 29
borey.crew = 107
borey.immersion_depth = 400
borey.rockets = 16
borey.torpedoes = 25
borey.nuclear_reactor = 'КТП-6'

puts '---------------------------------------'
characteristics = <<~HERE
  Характеристики судна:
   Длинна: #{borey.max_length} м.
   Ширина: #{borey.max_width} м.
   Скорость: #{borey.max_speed} узлов
   Экипаж: #{borey.crew} человек
   Рабочая глубина погружения: #{borey.immersion_depth} м.
   Количество ракет: #{borey.rockets} штук
   Колличество торпед: #{borey.torpedoes} штук
   Тип ядерной установки: #{borey.nuclear_reactor}
HERE

puts characteristics
puts '---------------------------------------'
