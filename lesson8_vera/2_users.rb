# frozen_string_literal: true

require_relative 'lib/users_classes'

user1 = Author.new
user1.surname = 'Пушкин'
user1.name = 'Александр'
user1.patronymic = 'Сергеевич'
user1.email = 'ru_poesia@mail.ru'

puts user1.surname
puts user1.name
puts user1.patronymic
puts user1.email
puts user1.say
puts user1.to_s
