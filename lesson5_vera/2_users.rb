require_relative 'lib/user'

fst= User.new(surname: 'Збитнева', name: 'Вера', patronymic: 'Аркадиевна')
puts "#{fst.surname} #{fst.name} #{fst.patronymic}"

snd = User.new(surname: 'Заика', name: 'Виталий', patronymic: 'Александрович')
puts "#{snd.surname} #{snd.name} #{snd.patronymic}"

test_name = User.new(name: 'Стивен', surname: 'Спилберг')
puts "#{test_name.surname} #{test_name.name} #{test_name.patronymic}"