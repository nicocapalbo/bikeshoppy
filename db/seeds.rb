# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.create!(email: "admin@mail.com", password: 123456, password_confirmation: 123456, role: 1)


bike = Bike.create!(name: "Intense Tracer", price: 5399)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike1.png')), filename: 'bike1.png', content_type: 'image/jpeg')
# bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike1.png')), filename: 'bike1.jpg')
bike = Bike.create!(name: "Polygon Xquare One", price: 4150)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike2.png')), filename: 'bike2.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Trek Session", price: 5200)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike3.png')), filename: 'bike3.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Orbea Rallon", price: 4750)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike4.png')), filename: 'bike4.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Scott Genius", price: 5432)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike5.png')), filename: 'bike5.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Canyon Torque", price: 6534)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike2.png')), filename: 'bike2.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "YT Capra", price: 3456)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike4.png')), filename: 'bike4.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Santa Cruz Blur & Highball", price: 2345)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike3.png')), filename: 'bike3.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Propain Hugene", price: 5463)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike1.png')), filename: 'bike1.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Yeti SB 100", price: 3424)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike5.png')), filename: 'bike5.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Canyon Lux", price: 5348)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike2.png')), filename: 'bike2.png', content_type: 'image/jpeg')
