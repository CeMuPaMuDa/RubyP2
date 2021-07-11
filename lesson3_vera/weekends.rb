# frozen_string_literal: true

require 'date'

class Date
  def weekends
    first = self
    second = first.next_year
    while first < second
      if first.saturday? || first.sunday?
        yield first.strftime('%d.%m.%Y')
      end
      first = first.next_day
    end
  end
end

Date.new(2022).weekends {|x| puts x}