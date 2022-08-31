require_relative 'crud'

users = [

  { username: 'Wiliam', password: 'password1' },

  { username: 'Darmawan', password: 'password2' }

]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
