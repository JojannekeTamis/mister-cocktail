# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "deleting all cocktails"

Cocktail.delete_all

puts "creating new cocktails"

# 10.times { Cocktail.create(name: "#{Faker::Name.name}" )}
Cocktail.create!(name: "Mojito")
Cocktail.create!(name: "Martini")
Cocktail.create!(name: "Cosmopolitan")
Cocktail.create!(name: "Tequila Sunrise")
Cocktail.create!(name: "Mai Tai")
Cocktail.create!(name: "Manhattan")
Cocktail.create!(name: "Pina colada")
Cocktail.create!(name: "Margarita")
Cocktail.create!(name: "Black Russian")
Cocktail.create!(name: "Bloody Mary")

puts "Now there are cocktails"

puts "deleting all ingredients"

Ingredient.delete_all

puts "Added 10 cocktails"

Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "rum")
Ingredient.create!(name: "vodka")
Ingredient.create!(name: "coca-cola")

puts "Now there are ingredients"
