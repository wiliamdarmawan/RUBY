require 'bcrypt'

users = [
  { username: 'Wiliam', password: 'password1' },
  { username: 'Darmawan', password: 'password2' }
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

# new_password = create_hash_digest('password1')
# puts new_password
# puts new_password == 'password1'
# puts new_password == 'password2'

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)
