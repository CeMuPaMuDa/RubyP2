# frozen_string_literal: true

class Building
  def num_of_floor(fl = 1)
    "Колличество этажей в здании: #{fl}"
  end

  def type_of_cnstr(matrl)
    "Тип конструкции здания: #{matrl}"
  end
end

house = Building.new

puts house.type_of_cnstr('железобетоная')
puts house.num_of_floor(5)
