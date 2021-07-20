# frozen_string_literal: true

require_relative 'lib/chess'

black_queen = Chess.new('ферзь', 'black')
white_queen = Chess.new('ферзь')

puts '--------------------------------------'
puts "Фигура: #{black_queen.figure}"
puts "Цвет: #{black_queen.color}"
puts '--------------------------------------'
puts "Фигура: #{white_queen.figure}"
puts "Цвет: #{white_queen.color}"
puts '--------------------------------------'
