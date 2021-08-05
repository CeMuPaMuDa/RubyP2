# frozen_string_literal: true

class Ship
  attr_accessor :max_length, :max_width, :max_speed, :crew
end

class Submarine < Ship
  attr_accessor :immersion_depth
end

class SurfaceShip < Ship
  attr_accessor :board_height
end
