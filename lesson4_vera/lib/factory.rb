# frozen_string_literal: true

# rubocop:disable Style/ClassVars
class Factory
  @@toys = []

  def build(toy)
    case toy
    when :teddy_bear then @@toys << TeddyBear.new
    when :ball then @@toys << Ball.new
    when :cube then @@toys << Cube.new
    end
  end

  def self.total
    @@toys.count
  end

  def self.offers
    tb_count = @@toys.select { |x| x.instance_of?(TeddyBear) }.count
    b_count = @@toys.select { |x| x.instance_of?(Ball) }.count
    c_count = @@toys.select { |x| x.instance_of?(Cube) }.count
    @@statistic = {
      teddy_bear: tb_count,
      ball: b_count,
      cube: c_count
    }
  end

  class TeddyBear; end

  class Ball; end

  class Cube; end
end
# rubocop:enable Style/ClassVars
