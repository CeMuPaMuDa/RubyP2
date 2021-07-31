# frozen_string_literal: true

require 'date'

date = Date.new(Date.today.year, Date.today.month, 1)
days_of_week = Date::ABBR_DAYNAMES.map { |x| " #{x}" }
month_name = Date::MONTHNAMES[date.month]
month_and_year = "#{month_name} #{date.year}"
cell_size = days_of_week.first.size
line_size = cell_size * days_of_week.size
margin = line_size / 2 - month_and_year.size / 2

puts month_and_year.rjust(month_and_year.size + margin, ' ')
puts days_of_week.join('')

week_day = date.wday
curr_month = date.month
prev = ''.ljust(week_day * cell_size, ' ')

while date.month == curr_month
  while week_day < days_of_week.size && date.month == curr_month
    day_str = date.day.to_s.rjust(cell_size, ' ')
    cell = "#{prev}#{day_str}"
    prev = ''
    print cell
    date += 1
    week_day += 1
  end
  week_day = 0
  puts
end
