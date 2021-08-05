# frozen_string_literal: true

require_relative 'lib/person_classes'

user1 = Admins.new
user1.surname = 'Иванов'
user1.name = 'Иван'
user1.patronymic = 'Иванович'

p user1

user2 = Person.new
user2.surname = 'Петров'
user2.name = 'Петр'
user2.patronymic = 'Петрович'

p user2
