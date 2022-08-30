def auth_user(username, password, users)
  users.each do |user|
    return user if user[:username] == username && user[:password] == password
  end
  'Credentials were not correct'
end

users = [
  { username: 'Wiliam', password: 'password1' },
  { username: 'Darmawan', password: 'password2' }
]

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'
attempt = 0

while attempt < 3
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp

  user = auth_user(username, password, users)
  puts user
  puts 'Press n to quit or any other key to continue'
  input = gets.chomp.downcase
  break if input == 'n'

  attempt += 1
end
puts 'You have exceeded the number of attempts' if attempt >= 3
