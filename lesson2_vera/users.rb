# frozen_string_literal: true

require_relative 'lib/user'
require_relative 'lib/rating'
require_relative 'lib/generation'

student = Generation.new.create(10)
puts 'Список студентов и их оценок:'
student.each { |key, val| puts "Имя студента:  #{key},  Оценка:  #{val}" }

def user(name, grade)
  rating = Rating.new(grade)
  user = User.new(name)
  [user, rating]
end

puts '-------------------------------------------------------------'

users = student.each_with_object({}) do |(name, grade), collection|
  user, rating = user(name, grade)
  collection[user] = rating
end

a = users.values.map(&:grade).sum.to_f / users.count
i = 0

puts 'Студенты с оценкой выше среднего:'
users.select { |_key, val| val.grade >= a }
     .map { |key, val| puts "#{i += 1}. #{key.fio} : оценка '#{val.grade}'" }
