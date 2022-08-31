require_relative 'crud'
class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name; #{@last_name}, Username: #{@username}, Email address: #{@email}"
  end
end

wiliam = Student.new('Wiliam', 'Darmawan', 'wiliam@example.com', 'wiliamdarmawan', 'password1')
john = Student.new('John', 'Doe', 'john@example.com', 'johndoe', 'password2')
hashed_password = wiliam.create_hash_digest(wiliam.password)

puts hashed_password