# frozen_string_literal: true

require_relative 'lib/list'
list = List.new('Vasya', 78, :red, [1, 2, 'кто тут?'], { green: 'зелений' })
list.each { |x| puts x }
