# frozen_string_literal: true

require_relative 'lib/array'
arr = [1, 2, 3, 4, 5]
puts(arr.my_reduce { |a, b| a * b })
