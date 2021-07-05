# frozen_string_literal: true

arr = Array.new(10) { rand(0..99) }
p "Исходный массив: #{arr}"
puts "Минимальное значение: #{arr.min} Максимальное значение: #{arr.max}"
