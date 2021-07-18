class Integer
  def minutes
    self * 60
  end
  def hours
    self.minutes * 60
  end
  def days
    self.hours * 24
  end
end