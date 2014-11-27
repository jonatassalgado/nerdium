# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(
    first_name: 'John',
    last_name: 'Doe',
    profile_name: 'john',
    email: 'admin@gmail.com',
    password: 'password',
    password_confirmation: 'password',
    admin: true
)

puts "======= ADMIN ACCESS ======="
puts "/n"
puts "Admin created with:"
puts "email: admin@gmail.com"
puts "password: password"
puts "/n"
puts "Access: localhost:3000/entrar"