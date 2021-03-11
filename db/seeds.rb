# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




User.create!(email: "admin@mail.com", password: 123456, password_confirmation: 123456, role: 1)

bike = Bike.create!(name: "Intense Tracer", price: 5399, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike5.png')), filename: 'bike5.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Polygon Xquare One", price: 4150, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike2.png')), filename: 'bike2.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Trek Session", price: 5200, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike3.png')), filename: 'bike3.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Orbea Rallon", price: 4750, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike4.png')), filename: 'bike4.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Scott Genius", price: 5432, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike5.png')), filename: 'bike5.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Canyon Torque", price: 6534, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike2.png')), filename: 'bike2.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "YT Capra", price: 3456, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike4.png')), filename: 'bike4.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Santa Cruz Blur & Highball", price: 2345, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike3.png')), filename: 'bike3.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Propain Hugene", price: 5463, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike4.png')), filename: 'bike4.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Yeti SB 100", price: 3424, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike5.png')), filename: 'bike5.png', content_type: 'image/jpeg')
bike = Bike.create!(name: "Canyon Lux", price: 5348, disabled: false)
bike.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bike2.png')), filename: 'bike2.png', content_type: 'image/jpeg')

@bikes = Bike.all
@bikes.each do |bike| 
  comp1 = Component.create!(name: 'Saddle', bike: bike)
  Option.create!(name: 'Standard', price: 5, component: comp1, disabled: false)
  Option.create!(name: 'Premium', price: 10, component: comp1, disabled: false)

  comp2 = Component.create!(name: '17 Inch Wheel', bike: bike)
  Option.create!(name: 'Green', price: 0, component: comp2, disabled: false)

  comp3 = Component.create!(name: '19 Inch Wheel', bike: bike)
  Option.create!(name: 'Green', price: 10, component: comp3, disabled: false)
  Option.create!(name: 'Blue', price: 10, component: comp3, disabled: false)

  comp4 = Component.create!(name: '20 Inch Wheel', bike: bike)
  Option.create!(name: 'Green', price: 15, component: comp4, disabled: false)
  Option.create!(name: 'Blue', price: 20, component: comp4, disabled: false)
  Option.create!(name: 'Black', price: 25, component: comp4, disabled: false)
  Option.create!(name: 'Carbon', price: 50, component: comp4, disabled: false)
end