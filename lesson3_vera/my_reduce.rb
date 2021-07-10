class Array
  def my_reduce(val)
    self.map do |el|
      val = yield(val, el)
    end
    val
  end
end
p [1,2,3,4,5].my_reduce(1){|a, b| a * b}