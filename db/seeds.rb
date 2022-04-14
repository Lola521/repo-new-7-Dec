# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mandarin = Restaurant.create([{ name: 'Le mandarin' }, { category: 'chinese' }, { address: '13001 Marseille' }])
goodprice = Review.create(content: 'great place, good price', rating: '5')
goodprice.restaurant = mandarin
goodprice.save
altante = Restaurant.create([{ name: 'Al tente' }, {category: 'italian' }, { address: '13002 Marseille' }])
wasabi = Restaurant.create([{ name: 'Wasabi' }, {category: 'japanese' }, { address: '13003 Marseille' }])
