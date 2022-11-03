# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Tag.destroy_all
User.destroy_all
City.destroy_all
Gossip.destroy_all

10.times do
  city = City.create(
    name: Faker::Movies::StarWars.planet,
    zip_code: Faker::Address.zip_code
  )
end

10.times do
  user = User.create(
    first_name: Faker::TvShows::GameOfThrones.dragon,
    last_name: Faker::Name.last_name,
    description: Faker::Movies::StarWars.quote,
    email: Faker::TvShows::GameOfThrones.dragon+"@gmail.comm",
    age: Faker::Number.within(range: 14..80),
    city_id:City.all.sample.id,
  )
end

20.times do
  gossip = Gossip.create(
    title: Faker::Music::Opera.mozart,
    content: Faker::Music::Prince.lyric,
    user_id:User.all.sample.id
  )
end


10.times do
  tag = Tag.create(
    title: Faker::Books::CultureSeries.civ
  )
end