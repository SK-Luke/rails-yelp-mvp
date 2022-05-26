require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

categories = %w[chinese italian japanese french belgian]
puts "Creating restaurants..."
10.times do
  restaurant = Restaurant.new({
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: categories.sample
  })
  restaurant.save
end
puts "Finished!"
