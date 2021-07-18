class Time
  MORNING = 6...12
  DAY = 12...18
  EVENING = 18..23
  NIGHT = 0...6
  
  SAY_GOOD_MORNING = 'Доброе утро!'
  SAY_GOOD_DAY = 'Добрый день!'
  SAY_GOOD_EVENING = 'Добрый вечер!'
  SAY_GOOD_NIGHT = 'Доброй ночи!'

  def self.hello
    return SAY_GOOD_MORNING if MORNING.include? self.now.hour
    return SAY_GOOD_DAY if DAY.include? self.now.hour
    return SAY_GOOD_EVENING if EVENING.include? self.now.hour
    return SAY_GOOD_NIGHT if EVENING.include? self.now.hour
  end
end

