# frozen_string_literal: true

puts %i[first second third].each_with_index.map { |x, i| [x, i + 1] }.to_h
