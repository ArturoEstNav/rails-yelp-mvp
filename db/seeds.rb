# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts 'Cleaning database'
Restaurant.destroy_all
puts 'Creating new restaurants'
10.times do
  new_restaurant = Restaurant.new(name: Faker::Hipster.words(number: 2).join(' '),
                                 address: Faker::Address.street_address,
                                 category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
                                 phone_number: Faker::PhoneNumber.cell_phone)
  new_restaurant.save
end
puts 'Done!'
