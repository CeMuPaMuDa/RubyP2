# frozen_string_literal: true

# module Person
#   attr_accessor :name, :surname, :patronymic
# end

# class Admins
#   include Person
# end

# class Moderators
#   include Person
# end

class Person
  attr_accessor :name, :surname, :patronymic

  def initialize
    raise 'Создание объекта невозможно' if instance_of?(Person)
  end
end

class Admins < Person; end

class Moderators < Person; end
