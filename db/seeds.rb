# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


(1..100).each do |i|
    Product.create(
        name: "Name #{i}",
        quantity: rand(1..100),
        price: rand(1..1000),
        desc: "Desc #{i}",
        views: rand(15.1000) / (i * 0.1),
        created_at: Time.now - i.days,
        updated_at: Time.now - i.days
        )
end