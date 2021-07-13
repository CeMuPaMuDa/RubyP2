# frozen_string_literal: true

class Array
  def my_select
    clone = []
    each do |el|
      clone.push(el) if yield el
    end
    clone
  end
end
arr = [1, 2, 3, 4, 5]
p arr.my_select(&:odd?)
