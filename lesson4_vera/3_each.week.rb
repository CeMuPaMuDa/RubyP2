# frozen_string_literal: true

require_relative 'lib/week'

WEEK = %w[
  понедельник
  вторник
  среда
  четверг
  пятница
  суббота
  воскресенье
].freeze

new_week = Week.new(WEEK)
new_week.each { |w| puts w }
