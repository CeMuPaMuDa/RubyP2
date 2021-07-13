# frozen_string_literal: true

require 'date'
# require_relative 'lib/date'

class Date
  def weekends
    first = self
    second = first.next_year
    cur = (first...second).to_a
    cur.map do |el|
      yield el.strftime('%d.%m.%Y') if el.saturday? || el.sunday?
    end
  end
end

Date.new(2021).weekends { |x| puts x }
