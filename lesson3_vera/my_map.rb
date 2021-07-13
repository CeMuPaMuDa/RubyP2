# frozen_string_literal: true

class Array
  def my_map
    clone = []
    each do |x|
      clone.push yield x
    end
    clone
  end
end
arr = [1, 2, 3, 4, 5]
print arr.my_map { |n| n * n }
