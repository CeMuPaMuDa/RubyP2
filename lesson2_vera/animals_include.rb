# frozen_string_literal: true

arr = %w[cat dog tiger]

print arr.select { |el| el.include? 't' }
