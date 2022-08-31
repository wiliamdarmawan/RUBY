class Student
  attr_accessor :first_name, :last_name, :email, :username

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
puts wiliam
puts john
wiliam.last_name = john.last_name
puts 'Wiliam is altered'
puts wiliam
