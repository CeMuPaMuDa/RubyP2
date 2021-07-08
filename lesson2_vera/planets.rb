# frozen_string_literal: true

PLANETS = {
  'Меркурий' => 0.32868,
  'Венера' => 4.81068,
  'Земля' => 5.97600,
  'Марс' => 0.63345,
  'Юпитер' => 1876.64328,
  'Сатурн' => 561.80376,
  'Уран' => 86.05440,
  'Нептун' => 101.59200,
  'Плутон' => 0.01195
}.freeze

puts 'Cамые легкие планеты солнечной системы: '
PLANETS.sort_by { |_key, val| val }[0..2].each { |key, _val| puts "=> #{key} : #{val}" }
puts 'Cамые тяжелые планеты солнечной системы: '
PLANETS.sort_by { |_key, val| val }.reverse[0..2]
       .each { |key, _val| puts "=> #{key} : #{val}" }
