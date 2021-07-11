require 'date'

class Date
  def weekends
    first = self
    second = first.next_year
    cur = (first...second).to_a
    cur.map do |el|
      if el.saturday? || el.sunday?
        yield el.strftime('%d.%m.%Y')
      end
    end
  end
end

Date.new(2021).weekends {|x| puts x}