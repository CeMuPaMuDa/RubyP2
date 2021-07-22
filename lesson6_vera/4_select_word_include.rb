# frozen_string_literal: true

# rubocop:disable Layout/LineLength
WORDS = "Возьмите текст этого задания и извлеките из него все слова, которые начинаются с символа 'и'. Сформируйте из них список уникальных слов и выведите их в порядке увеличения количества символов в слове."
# rubocop:enable Layout/LineLength
words_arr = WORDS.split(/[\s,.']/).map(&:downcase)
                 .select { |w| w.start_with? 'и' }.sort_by(&:size).uniq

i = 0

puts 'Список всех слов:'
words_arr.map { |x| puts "#{i += 1}: #{x}" }
