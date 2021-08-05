# frozen_string_literal: true

class User
  attr_accessor :read_post, :surname, :name, :patronymic, :email

  def say
    self.class.to_s
  end
  alias to_s say
end

class Author < User
  attr_accessor :write_post, :create_comments
end

class Moderator < Author
  attr_accessor :delete_post, :edit_post
end

class Admin < Moderator
  attr_accessor :delete_user, :edit_user
end
