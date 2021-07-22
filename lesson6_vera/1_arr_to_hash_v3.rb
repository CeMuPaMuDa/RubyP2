# frozen_string_literal: true

puts(%i[first second third].each_with_index.to_h { |key, i| [key, i + 1] })
