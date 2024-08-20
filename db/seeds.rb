# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all
VendorSweet.destroy_all

vendors = [
  "Insomnia Cookies",
  "Cookies Cream",
  "Carvel",
  "Gregory's Coffee",
  "Duane Park Patisserie",
  "Tribeca Treats",
]

sweets = [
  "Chocolate Chip Cookie",
  "Chocolate Chunk Cookie",
  "M&Ms Cookie",
  "White Chocolate Cookie",
  "Brownie",
  "Peanut Butter Icecream Cake",
]

comments = [
  "Best seller",
  "Customer favorite",
  "Seasonal special",
  "Limited edition",
  "New addition",
  "Top rated"
]


vendor_records = vendors.map { |vendor| Vendor.create!(name: vendor) }
sweet_records = sweets.map { |sweet| Sweet.create!(name: sweet) }

vendor_records.each do |vendor|
  assigned_sweets = sweet_records.sample(rand(1..sweets.size))
  assigned_sweets.each do |sweet|
    VendorSweet.create!(
      vendor: vendor,
      sweet: sweet,
      comment: comments.sample # Randomly pick a comment
    )
  end
end
