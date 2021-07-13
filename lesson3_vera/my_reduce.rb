# frozen_string_literal: true

class Array
  def my_reduce(val = first)
    map do |el|
      val = yield(val, el)
    end
    val
  end
end
puts([1, 2, 3, 4, 5].my_reduce { |a, b| a * b })
