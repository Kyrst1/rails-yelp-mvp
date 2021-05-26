# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  restaurant = Restaurant.new(
    name: Faker::Creature::Animal.name.capitalize,
    address: "rue #{Faker::Mountain.name}, #{rand(1000..1500)} #{Faker::Address.city} ",
    phone_number: "+32#{Faker::Bank.account_number}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end
