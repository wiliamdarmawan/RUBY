require 'bcrypt'

my_password = BCrypt::Password.create('my password')
my_password_1 = BCrypt::Password.create('my password')
my_password_2 = BCrypt::Password.create('my password')

puts my_password
puts my_password_1
puts my_password_2

puts my_password == my_password_1
puts my_password == 'my password'

# puts my_password = BCrypt::Password.new("$2a$12$GypGLR/K1MmXzlpP/h7UfupvKyPnR0wNULfNs3t.fNrh7A7Jy452e")
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false
