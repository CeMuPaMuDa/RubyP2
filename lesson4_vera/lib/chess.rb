# frozen_string_literal: true

class Chess
  def initialize(figure, color = 'белый')
    @figure = figure
    @color = color
  end

  attr_reader :color, :figure
end
