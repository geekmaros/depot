# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#create products of 5 items based on the Product model

5.times do |i|
  Product.create!(
    title: "Product #{i + 1}",
    description: "This is the description for Product #{i + 1}.",
    image_url: "https://via.placeholder.com/150?text=Product+#{i + 1}",
    price: rand(10..100) # Random price between 10 and 100
  )
end
