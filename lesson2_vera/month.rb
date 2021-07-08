# frozen_string_literal: true

MONTH = %w[январь февраль март апрель май июнь июль август сентябрь октябрь ноябрь декабрь].freeze
print(MONTH.minmax { |a, b| a.size <=> b.size })
