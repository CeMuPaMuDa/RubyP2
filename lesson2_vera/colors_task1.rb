# frozen_string_literal: true

colors = []
print 'Введите цвет. Для окончания введите "stop": '
loop do
  color = gets.chomp

  break if color == 'stop'.downcase
print 'Еще?: '
  colors << color
end

puts "Массив цветов: #{colors}"
