# frozen_string_literal: true

class Foo
  def initialize(hash)
    @hash = hash
  end

  def method_missing(mtd)
    if @hash.include?(mtd)
      @hash[mtd]
    else
      'Чего тебе надобно, старче?'
    end
  end

  def respond_to_missing?(method, include_private = false)
    methods.include?(method) || super
  end
end
