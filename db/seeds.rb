# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clearing previous data...'

User.destroy_all
Movie.destroy_all
Favorite.destroy_all

puts 'Creating users...'
User.create(username: 'Ethan', email: 'ethan@yahoo.com', password_digest: '1234')
User.create(username: 'Max', email: 'max@gmail.com', password_digest: '1234')
User.create(username: 'Alberto', email: 'alberto@cointainer.com', password_digest: '1234')
User.create(username: 'Tylerfield', email: 't-money@gmail.com', password_digest: '1234')

puts 'Creating movies...'
Movie.create(title: 'Lord of the Rings - The fellowship of the ring', overview: Faker::Lorem.question(word_count: 10), poster_url: 'https://m.media-amazon.com/images/I/61nztI2IyfL._AC_SY741_.jpg')
Movie.create(title: 'The Hobbit - The desolation of Smaug', overview: Faker::Lorem.question(word_count: 10), poster_url: 'https://i.pinimg.com/474x/53/8c/56/538c56de7726c6109640f410e55b2a30.jpg')
Movie.create(title: 'Harry Potter - and the Sorcerers stone', overview: Faker::Lorem.question(word_count: 10), poster_url: 'https://m.media-amazon.com/images/I/71Ba4P9mweL._AC_SL1068_.jpg')


puts 'Creating favorites....'
5.times do
Favorite.create(user_id: rand(1..3), movie_id: rand(1..3))
end

puts 'Seeding complete!'