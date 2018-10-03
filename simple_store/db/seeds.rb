# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


676.times do

  title          = Faker::Food.dish
  description    = Faker::Food.description
  price          = Faker::Commerce.price
  stock_quantity = Faker::Number.between(1, 100)

  new_product = Product.create(:title          => title,
                               :description    => description,
                               :price          => price,
                               :stock_quantity => stock_quantity)
end

puts "After seeding the database: "
puts " - There are #{Product.count} products."