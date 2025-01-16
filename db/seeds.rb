# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

Restaurant.create!(name:"Shabbaranks", address:"1458 forth street", phone_number:"0254789614")
Restaurant.create!(name:"Guilty.co", address:"1458 forth street", phone_number:"0254789614")
Restaurant.create!(name:"Ukko", address:"1458 forth street", phone_number:"0254789614")
Restaurant.create!(name:"Ten & tender", address:"1458 forth street", phone_number:"0254789614")
Restaurant.create!(name:"Gemeli", address:"1458 forth street", phone_number:"0254789614")

puts "Finished!"
