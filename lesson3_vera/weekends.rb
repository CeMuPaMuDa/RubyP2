# frozen_string_literal: true

require_relative 'lib/date'

Date.new(2021).weekends { |x| puts x }
