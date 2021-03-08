# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "admin@mail.com", password: 123456, password_confirmation: 123456, role: 1)

Bike.create!(name: "Bike1", price: 100)
Bike.create!(name: "Bike2", price: 150)
Bike.create!(name: "Bike3", price: 200)
Bike.create!(name: "Bike4", price: 250)