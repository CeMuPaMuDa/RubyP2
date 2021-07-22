# frozen_string_literal: true

require_relative 'lib/user'
require_relative 'lib/group'

# Второе задание
puts '-----------------------------------------------'
fst = User.new(surname: 'Збитнева', name: 'Вера', patronymic: 'Аркадиевна')
puts "Пользователь1: #{fst.full_name}"

snd = User.new(surname: 'Заика', name: 'Виталий', patronymic: 'Александрович')
puts "Пользователь2: #{snd.full_name}"

test_name = User.new(name: 'Чахлик', surname: 'Невмерущий')
puts "Пользователь3: #{test_name.full_name}"

# Третье задание
i = 0
puts '-----------------------------------------------'
Group.new(fst, snd, test_name).each { |usr| puts "#{i += 1}. #{usr.full_name}" }
puts '-----------------------------------------------'
