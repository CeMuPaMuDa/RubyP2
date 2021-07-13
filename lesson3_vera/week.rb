# frozen_string_literal: true

require 'date'
class Date
  def initialize(cur_year = 2021)
    @year = cur_year
    @cweek = Date.today.cweek
  end

  def week(num_week = @cweek)
    day_of_week = (1..7).to_a
    day_of_week.each do |x|
      yield Date.commercial(@year, num_week, x).strftime('%d.%m.%Y')
    end
  end
end

Date.new(2060).week { |x| puts x }
