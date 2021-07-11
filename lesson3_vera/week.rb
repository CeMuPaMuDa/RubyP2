# frozen_string_literal: true

require 'date'
class Date
  def week(num_week = cweek)
    i = 1
    if block_given?
      while i <= 7
        date_week = Date.commercial(year, num_week, i)
        yield date_week.strftime('%d.%m.%Y')
        i += 1
      end
    else
      first_date_of_week = Date.commercial(year, num_week, i)
                               .strftime('%d.%m.%Y')

    end
  end
end
Date.new(2021).week(28) { |x| puts x }
