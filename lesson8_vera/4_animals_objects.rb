# frozen_string_literal: true

require_relative 'lib/animals_classes'

ANIMALS_TREE = [Animals, Chordates, Mammals, Primates, Hominids, People, HomoSapiens].freeze

ANIMALS_TREE.each do |cls|
  puts cls.new
end
