# frozen_string_literal: true


class User
  def initialize(fio, rating)
    @fio = fio
    @rating = rating
  end

  attr_reader :fio, :rating
end

