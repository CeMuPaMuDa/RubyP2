# frozen_string_literal: true

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

# Class change state of matter
class SmSubstance
  STATUS = %w[solid liquid gaz].freeze
  attr_accessor :status

  state_machine :status, initial: -> { STATUS[rand(0..2)] } do
    event :melt do
      puts 'Расплавляем..'
      transition solid: :liquid
    end

    event :freezze do
      puts 'Замораживаем..'
      transition liquid: :solid
    end

    event :boil do
      puts 'Испаряем..'
      transition liquid: :gas
    end

    event :condense do
      puts 'Конденсируем..'
      transition gas: :liquid
    end

    event :sublime do
      puts 'Сублимируем..'
      transition solid: :gas
    end

    event :deposit do
      puts 'Десублимируем..'
      transition gas: :solid
    end
  end
end
