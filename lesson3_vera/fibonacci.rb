# frozen_string_literal: true

def fib(n)
  f = ((1 + Math.sqrt(5)) / 2)**(n - 1)
  s = ((1 - Math.sqrt(5)) / 2)**(n - 1)
  ((f - s) / Math.sqrt(5)).round
end

def fibonacci(num)
  i = 0

  f = (1..num).to_a
  f.map do |x|
    yield fib(x)
    i += 1
    break if i >= num
  end
end

print 'Введите номер элемента ряда Фибоначчи: '
my_num = gets.to_i
fibonacci(my_num) { |f| print "#{f} " }
