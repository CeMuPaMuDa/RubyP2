# frozen_string_literal: true

arr = []
i = 1
while i <= 10
  arr << rand(0..99)
  i += 1
end
p "Исходный массив: #{arr}"
puts "Минимальное значение: #{arr.min} Максимальное значение: #{arr.max}"
