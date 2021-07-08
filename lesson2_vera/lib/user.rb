# frozen_string_literal: true

class User
  def initialize(fio)
    @fio = fio
  end

  attr_reader :fio
end
