# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning db'
Restaurant.destroy_all

p 'Creating new data'

amber = { name: 'Amber', address: '10969 Berlin Leipziger platz 12', phone_number: '123442321', category: 'italian' }
le_test = { name: 'Le Test', address: 'Paris Orien platz 11', phone_number: '64521234', category: 'french' }
swan = { name: 'Swan', address: 'Rom Tenestera 1', phone_number: '0892482311', category: 'belgian' }
janushi = { name: 'Janushi', address: 'Osaka nikurashi allee 22', phone_number: '12344444221', category: 'japanese' }

[amber, le_test, swan, janushi].each do |attr|
  restaurant = Restaurant.create!(attr)
  p "Created #{restaurant.name}"
end
p 'fINISHED'
