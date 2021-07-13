# frozen_string_literal: true

require_relative 'lib/date'

Date.new.week { |x| puts x }
