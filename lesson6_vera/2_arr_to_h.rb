# frozen_string_literal: true

a = %w[first second third]
puts a.each_with_index
      .to_h { |x, i| [x, x[0].upcase + x[-2, 2] + "(#{i + 1})"] }
