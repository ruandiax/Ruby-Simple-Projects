require_relative 'Crud'

users = [
    { username: "ruan", password: "password1"},
    { username: "amanda", password: "password2"},
    { username: "joana", password: "password3"},
    { username: "lorenzo", password: "password4"},
    { username: "doug", password: "password5"}
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users