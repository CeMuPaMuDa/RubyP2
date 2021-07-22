# frozen_string_literal: true

fst = %w[red orange yellow green gray indigo violet]
snd = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
puts Hash[[fst.map(&:to_sym), snd].transpose]
