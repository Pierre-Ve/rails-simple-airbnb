# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Flat.destroy_all
puts "all flats destroyed"
20.times do
 flat = Flat.create!(
    name: Faker::Fantasy::Tolkien.location,
    address: Faker::Address.full_address,
    description: Faker::Quote.yoda,
    price_per_night: (50..450).to_a.sample,
    number_of_guest: (2..6).to_a.sample,
    img_url: "https://source.unsplash.com/collection/#{rand(5000)}/480x480"
  )
  puts "#{flat.name} created"
end

puts "you're good to go !"
