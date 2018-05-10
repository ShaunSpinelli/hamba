# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
password = 'pass123'
1.upto(10) do |i|
  User.create(
    email: "user-#{i}@example.com",
    password: password,
    password_confirmation: password,
    rating: i.to_s
  )
  
end

  User.find(1).update(first_name: "Sammy", last_name: "D")
  User.find(2).update(first_name: "Pubert", last_name: "Gesepi")
  User.find(3).update(first_name: "Don", last_name: "Jamin")
  User.find(4).update(first_name: "Harry", last_name: "Poser")
  User.find(5).update(first_name: "Jimmy", last_name: " Johnson")
  User.find(6).update(first_name: "Sally", last_name: "Simple")
  User.find(7).update(first_name: "Roses", last_name: " Ared")
  User.find(8).update(first_name: "Justin", last_name: "Time")
  User.find(9).update(first_name: "Holly ", last_name: "Sherbert")
  User.find(10).update(first_name: "Davi ", last_name: "Copperfield")

#create admin
  User.create(email: "admin@admin.com", password: password, password_confirmation: password)
  User.find(11).update(first_name: "Admin", last_name: "Admin")
  User.find(11).add_role :admin
  
