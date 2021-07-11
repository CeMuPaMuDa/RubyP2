require 'date'

def week(num_week)
  i =1
  while i <= 7
    date_week = Date.commercial(Date.today.year, num_week, i)
    yield date_week
    i += 1 
  end

end


week(1) {|x| puts x}
