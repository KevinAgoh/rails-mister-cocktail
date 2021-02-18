# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating seeds..."
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "Dark rum")
Ingredient.create(name: "Sweet Vermouth")
Ingredient.create(name: "Strawberry schnapps")
Ingredient.create(name: "Scotch")
Ingredient.create(name: "Apricot brandy")
Ingredient.create(name: "Champagne")
puts "done!"