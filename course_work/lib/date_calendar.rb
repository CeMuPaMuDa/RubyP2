# frozen_string_literal: true

require 'date'


class Date
OUR_MONTH = %w[Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь]
  def dayname
     DAYNAMES[self.wday]
  end

  def abbr_dayname
    ABBR_DAYNAMES[self.wday]
  end
  def see_month
      first = self
      second = first.next_month
      cur = (first...second).to_a
      arr = []
      cur.map do |el|
p el.abbr_dayname
        arr << el.strftime('%d')
      end
      arr

  end
end

arr = Date.new(2021,Time.new.month)

print arr.see_month.each_slice(7).to_a
