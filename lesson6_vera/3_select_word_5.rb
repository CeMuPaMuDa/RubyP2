# frozen_string_literal: true

# rubocop:disable Layout/LineLength
puts WORDS = 'Возьмите текст этого задания и извлеките из него все слова, количество символов в которых больше 5. Подсчитайте количество слов и выведите их алфавитном порядке'
# rubocop:enable Layout/LineLength
arr_words = WORDS.split(/[\s,.']/).map(&:downcase)
                 .select { |el| el.size >= 5 }.sort
i = 0

puts '- - - - - - - - - - - - - - - - -'
puts "Количество слов: #{arr_words.size}"
puts '- - - - - - - - - - - - - - - - -'
puts 'Список всех слов:'
arr_words.map { |x| puts "#{i += 1}: #{x}" }
