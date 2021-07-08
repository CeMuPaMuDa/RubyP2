# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'
require 'faker'

class Generation
  def create(n)
    users = {}
    (1..n).each { |_i| users[Faker::Name.name_with_middle] = rand(1..5) }
    users
  end
end
