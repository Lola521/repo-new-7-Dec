# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."

restaurants = Restaurant.create([
  { name: 'Le Mandarin', address: '5 cours Jean Ballard 13001 Marseille', category: 'chinese' },
  { name: 'Sushi Room', address: '20 rue vagon 13001 Marseille', category: 'japanese' },
  { name: 'Rome', address: 'rome Italy', category: 'italian' },
  { name: 'Chips', address: 'Bruge ', category: 'belgian' },
  { name: 'Raphael', address: 'Plage pointe rouge 13009 marseille', category: 'french' }
  ])

Review.create(content: 'Great place to try', rating: 5, restaurant: restaurants.first)
Review.create(content: 'Great place to try', rating: 5, restaurant: restaurants.last)
Review.create(content: 'Great place to try', rating: 5, restaurant: restaurants[1])
puts "Finished!"
