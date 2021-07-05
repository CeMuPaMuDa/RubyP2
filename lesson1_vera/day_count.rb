# frozen_string_literal: true

require_relative 'lib\calendar'
require 'date'
print 'Введите первую дату в формате YYYY MM DD: '
data1 = gets.chomp.split(' ').map(&:to_i)
print 'Введите вторую дату в формате YYYY MM DD: '
data2 = gets.chomp.split(' ').map(&:to_i)

t1 = Time.local(*data1)
t2 = Time.local(*data2)

count = Calendar.new.sec2date(t1 > t2 ? t1 - t2 : t2 - t1)

puts "Между датами прошло #{count.first} дней"

i = 0
start = t2 < t1 ? t2 : t1

while i <= count.first

  puts (start + count.first + (86_400 * i)).strftime('%d.%m.%Y')
  i += 1
end
