# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "creating seeds..."
Cocktail.create(name: "Moscow Mule")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Punch")
Cocktail.create(name: "Piña Colada")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Malibu Sunrise")
Cocktail.create(name: "Sangria")
Cocktail.create(name: "Monaco")
Cocktail.create(name: "Martini Spritz")

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

serialized_ingredients = open(url).read
ingredients = JSON.parse(serialized_ingredients)

ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end
puts "done!"