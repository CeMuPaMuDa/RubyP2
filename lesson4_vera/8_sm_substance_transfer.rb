# frozen_string_literal: true
# frozen_string_literal: true

require_relative 'lib/sm_substance'
require_relative 'lib/const'
transfer = ''
water = SmSubstance.new

loop do
  puts '---------------------------------------'
  puts 'Какое действеи неободимо выполнить?: '
  puts WHAT_ARE_WE_DOING
  puts '---------------------------------------'
  print '>>'
  transfer = gets.chomp.downcase



  case transfer
  when '1' then puts water.melt
  when '2' then puts water.freeze
  when '3' then puts water.boil
  when '4' then puts water.condense
  when '5' then puts water.sublime
  when '6' then puts water.deposit
  when 'stat' then puts water.status
  when 'stop' then break
  end
end
