# frozen_string_literal: true

class Group
  def initialize(*users)
    @users = users
  end

  def each(&block)
    @users.each(&block)
  end
  attr_reader :users
end
