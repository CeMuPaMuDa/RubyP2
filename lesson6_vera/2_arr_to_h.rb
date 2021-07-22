puts %w[first second third].each_with_index
     .map{|x, i| [x, x[0].upcase+x[-2, 2]+"(#{i+1})"]}.to_h