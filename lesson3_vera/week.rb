# frozen_string_literal: true

require 'date'
class Date
  def week(num_week = cweek)
    i = 1
    while i <= 7
      yield Date.commercial(year, num_week, i).strftime('%d.%m.%Y')
      i += 1
    end
  end
end
Date.new(2021).week(28) { |x| puts x }
