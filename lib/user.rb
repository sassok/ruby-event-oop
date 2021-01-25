require 'pry'


class User
  attr_accessor :email, :age, :select_user
  @@all_users = Array.new

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users.push(@email, @age)

  end

  def self.find_by_email(email)
  	@select_user = @@all_users.select{|x| x.email == email}
  	return @select_user
  end

  def self.all
  	return @@all_users
  end

  
end



