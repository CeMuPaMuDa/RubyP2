# frozen_string_literal: true

class Chess
  letters = {
    x: %w[A B C D E F G H],
    y: [1, 2, 3, 4, 5, 6, 7, 8]
  }
  COLORS = %w[white black].freeze
  CHESS_FIGURES = {
    1 => ['♜', '♞', '♝', '♛', '♚', '♝', '♞', '♜'],
    2 => ['♟', '♟', '♟', '♟', '♟', '♟', '♟', '♟'],
    7 => ['♙', '♙', '♙', '♙', '♙', '♙', '♙', '♙'],
    8 => ['♖', '♘', '♗', '♕', '♔', '♗', '♘', '♖']
  }.freeze
  def color; end

  def figure; end

  def start_coordinates; end
end
