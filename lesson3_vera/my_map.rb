# frozen_string_literal: true

require_relative 'lib/array'
arr = [1, 2, 3, 4, 5]
p(arr.my_map { |n| n * n })
