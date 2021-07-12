class Array
  def my_map
    clone = []
each do |x|
  
  clone.push yield  x
end
clone
  end
end

p [1,2,3,4,5].my_map{|n| n * n}