# frozen_string_literal: true

fst = %w[red orange yellow green gray indigo violet]
snd = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

puts fst.map(&:to_sym).zip(snd).to_h
