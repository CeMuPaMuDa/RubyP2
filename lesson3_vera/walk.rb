# frozen_string_literal: true

require_relative 'lib/array'

arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]
arr.walk { |i| puts i }
