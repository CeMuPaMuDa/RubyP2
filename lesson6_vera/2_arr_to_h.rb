# frozen_string_literal: true

arr = %w[first second third]
puts(arr.each_with_index
        .to_h { |x, i| [x, x[0].upcase + x[-2, 2] + "(#{i + 1})"] })
