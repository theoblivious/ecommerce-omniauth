# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


item1 = Product.create([{title: "Teddy Bear"}, {price :20}, {quantity: 20}])
item2 = Product.create([{title: "Book"}, {price :30}, {quantity: 11}])