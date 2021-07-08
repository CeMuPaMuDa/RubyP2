# frozen_string_literal: true

WEEK = %w[понедельник вторник среда четверг пятница суббота воскресение].freeze

print(WEEK.select { |el| el.start_with? 'с' })
