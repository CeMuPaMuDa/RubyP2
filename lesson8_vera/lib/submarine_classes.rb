# frozen_string_literal: true

require_relative 'ship_classes'
require_relative 'ship_modules'

class MilitarySubmarine < Submarine
  include Armament
end

class NuclearSubmarine < MilitarySubmarine
  attr_accessor :nuclear_reactor
end
