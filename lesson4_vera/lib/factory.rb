class Factory
  @@count = 0
  @@toys = []

  def build(toy)
    @@count += 1
    case toy
      when :teddy_bear
        @@toys << TeddyBear.new
      when :ball
        @@toys << Ball.new
      when :cube
        @@toys << Cube.new
      end
  end
def self.count
  @@count
end
def self.all
  @@toys
end

  class TeddyBear
  end
  class Ball
  end
  class Cube
  end

end