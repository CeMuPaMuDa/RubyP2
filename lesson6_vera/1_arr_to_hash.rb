# frozen_string_literal: true

hash = {}
%i[first second third].each_with_index { |key, val| hash[key] = val + 1 }
puts hash
