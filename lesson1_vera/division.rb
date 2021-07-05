# frozen_string_literal: true

require_relative 'lib\mathem_op'

print 'Введите перове число: '
a = gets.to_f
loop do
  print 'Введите второе число (кроме нуля): '
  b = gets.to_f
  break unless b.zero? || b.nil?
end

puts "Результат деления: #{MathemathicsOperations.new.division(a, b)}"
