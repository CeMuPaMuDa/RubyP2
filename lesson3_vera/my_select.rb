# frozen_string_literal: true

class Array
  def my_select
    each do |el|
      if yield el
        el
      else
      delete(el) 
      end
    end
  end
end

p [1, 2, 3, 4, 5].my_select(&:even?)
