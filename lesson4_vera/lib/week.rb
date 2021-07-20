# frozen_string_literal: true

class Week
  def initialize(arr)
    @arr = arr
  end

  def each(&block)
    @arr.each(&block)
  end
end
