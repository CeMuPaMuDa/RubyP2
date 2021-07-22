# frozen_string_literal: true

class User
  def initialize(surname:, name:, patronymic: '')
    @name = name
    @surname = surname
    @patronymic = patronymic
    *@full_name = surname, name, patronymic
  end

  def full_name
    @full_name.join(' ')
  end

  attr_reader :name, :surname, :patronymic
end
