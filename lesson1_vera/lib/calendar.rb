# frozen_string_literal: true

class Calendar
  def leap_year?(year)
    modulo4 = (year % 4).zero?
    modulo100 = (year % 100).zero?
    modulo400 = (year % 400).zero?
    modulo4 && !modulo100 || modulo4 && modulo100 && modulo400
  end

  def sec2date(secs)
    time = secs.round
    sec = time % 60
    time /= 60
    mins = time % 60
    time /= 60
    hrs = time % 24
    time /= 24
    days = time
    [days, hrs, mins, sec]
  end
end
