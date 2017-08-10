# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


UserSong.destroy_all
User.destroy_all
Song.destroy_all
Genre.destroy_all

Genre.create(name: "Electronica")
Genre.create(name: "Pop")
Genre.create(name: "Reggaeton")
Genre.create(name: "Rock")
Genre.create(name: "Gym")
Genre.create(name: "Jazz")

song1 = Song.create(name: "Lo que Pasó Pasó", duration: 100, genre_id: Genre.find_by(name: "Reggaeton").id)
song2 = Song.create(name: "Numb", duration: 200, genre_id: Genre.find_by(name: "Rock").id)
song3 = Song.create(name: "Electro", duration: 180, genre_id: Genre.find_by(name: "Electronica").id)
song4 = Song.create(name: "Baby", duration: 100, genre_id: Genre.find_by(name: "Pop").id)
song5 = Song.create(name: "Felices los 4", duration: 202, genre_id: Genre.find_by(name: "Reggaeton").id)
song6 = Song.create(name: "In da club", duration: 300, genre_id: Genre.find_by(name: "Gym").id)

User.create(email: "carlosjavier@cj.cl", password: "carlos", name: "Carlos Javier")
User.create(email: "admin@admin.cl", password: "carlos", name: "Admin")

