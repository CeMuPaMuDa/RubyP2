# frozen_string_literal: true

class Integer
  def minutes
    self * 60
  end

  def hours
    minutes * 60
  end

  def days
    hours * 24
  end
end
