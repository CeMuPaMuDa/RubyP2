# frozen_string_literal: true

class Foo
  def initialize(hash)
    @hash = hash
  end

  def method_missing(mtd)
    @hash.fetch(mtd, 'Чего тебе надобно, старче?')
  end

  def respond_to_missing?(method, include_private = false)
    methods.include?(method) || super
  end
end
