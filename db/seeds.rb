# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts "Destroy the pets 🥲"
Pet.destroy_all
puts "Done...☠️"

puts "Create pets"
10.times do
  Pet.create!(
    name: Faker::Name.name,
    color: Faker::Color.color_name,
    species: Pet::SPECIES.sample,
    address: Faker::Address.street_address,
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today)
  )
end