# frozen_string_literal: true

require_relative 'ship_classes'
require_relative 'ship_modules'

class MilitarySurfaceShip < SurfaceShip
  include Receptacle
  include Hoisting
  include Armament
  undef_method :torpedoes, :torpedoes=
end

class MissileCruiser < MilitarySurfaceShip
  MODLS = [Hoisting, Receptacle].freeze
  MODLS.each do |mdl|
    mdl.instance_methods(false).each { |el| undef_method el }
  end
end

class CargoShip < SurfaceShip
  include Hoisting
  include Receptacle
  attr_accessor :route
end

class DryCargoShip < CargoShip
  attr_accessor :corn_type, :corn_max_weight
end

class ContainerShip < CargoShip
  attr_accessor :container_max_count

  Receptacle.instance_methods(false).each { |el| undef_method el }
end

class OilTanker < CargoShip
  attr_accessor :oil_volume

  Hoisting.instance_methods(false).each { |el| undef_method el }
end
