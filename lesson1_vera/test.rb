# frozen_string_literal: true

today = Time.now
med = 7 - (today.strftime '%u').to_i

puts _arr = Array.new(7).map { (today - (7 - (med += 1)) * 86_400).strftime '%d.%m.%Y' }
