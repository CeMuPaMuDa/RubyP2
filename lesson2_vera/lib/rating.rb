# frozen_string_literal: true

class Rating
  def initialize(grade)
    @grade = grade
  end

  attr_reader :grade
end
