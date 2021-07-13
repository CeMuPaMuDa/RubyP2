# frozen_string_literal: true

require 'date'

class Date
  def week(num_week = Date.today.cweek)
    return unless block_given?

    day_of_week = (1..7).to_a
    day_of_week.each do |x|
      yield Date.commercial(year, num_week, x).strftime('%d.%m.%Y')
    end
  end

  def weekends
    first = self
    second = first.next_year
    cur = (first...second).to_a
    cur.map do |el|
      yield el.strftime('%d.%m.%Y') if el.saturday? || el.sunday?
    end
  end
end
