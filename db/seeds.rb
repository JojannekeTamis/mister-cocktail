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

10.times { Cocktail.create(name: "#{Faker::Name.name}" )}

puts "Added 10 cocktails"
