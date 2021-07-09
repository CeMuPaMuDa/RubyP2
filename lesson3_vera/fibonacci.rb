  def fib(n)
    return 0 if n == 1
    return 1 if [2, 3].include?(n)
    fib(n - 1) + fib(n - 2)

end


  def fibonacci(num)
i = 1

 f = *(0..num)
 while i <= num
yield fib(f[i])
 i+=1

 end
  end

fibonacci(10) { |f| print "#{f} " }