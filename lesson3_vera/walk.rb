
  def walk (val = [], &block)

    val.each do |x|
      case x
      when Array
        walk(x, &block)
      when Integer || String
      block.call(x)
     
      end
    end
  end


arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]

walk(arr) { |i| puts i }