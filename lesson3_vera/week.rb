# frozen_string_literal: true

require_relative 'lib/date'

Date.new(2021).week { |x| puts x }
