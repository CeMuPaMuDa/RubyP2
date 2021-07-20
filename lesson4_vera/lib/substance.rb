# frozen_string_literal: true

class Substance
  STATUS = %w[solid liquid gaz].freeze

  def initialize(status = STATUS[rand(0..2)])
    @status = status
  end

  # из твердого в жидкое
  def melt
    case @status
    when 'solid'
      puts 'Расплавляем..'
      @status = 'liquid'
    when 'gaz'
      puts 'Сначало необходимо десублимировать. Выполняю.. '
      deposit
    else
      puts 'Вещество и так жидкость! Операция невозможна'
    end
  end

  # из жидкого в твердое;
  def freeze
    case @status
    when 'liquid'
      puts 'Замораживаем..'
      @status = 'solid'
    when 'gaz'
      puts 'Сначало необходимо конденсировать. Выполняю.. '
      condense
    else
      'Вещество и так твердое! Операция невозможна'
    end
  end

  # из жидкого в газообразное;
  def boil
    case @status
    when 'liquid'
      puts 'Испаряем..'
      @status = 'gaz'
    when 'solid'
      puts 'Сначало необходимо расплавить. Выполняю.. '
      melt
    else
      puts 'Вещество и так газ! Операция невозможна'
    end
  end

  # из газообразного в жидкое;
  def condense
    case @status
    when 'gaz'
      puts 'Конденсируем..'
      @status = 'liquid'
    when 'solid'
      puts 'Сначало необходимо сублимировать. Выполняю.. '
      sublime
    else
      puts 'Вещество и так жидкость! Операция невозможна'
    end
  end

  # из твердого в газообразное;
  def sublime
    case @status
    when 'solid'
      puts 'Сублимируем..'
      @status = 'gaz'
    when 'liquid'
      puts 'Сначало необходимо заморозить. Выполняю.. '
      freeze
    else
      puts 'Вещество и так газ! Операция невозможна'
    end
  end

  # из газообразное в твердое
  def deposit
    case @status
    when 'gaz'
      puts 'Десублимируем..'
      @status = 'solid'
    when 'liquid'
      puts 'Сначало необходимо испарить. Выполняю.. '
      boil
    else
      puts 'Вещество и так твердое! Операция невозможна'
    end
  end

  def status
    "Текущий статус: #{@status}"
  end
end
