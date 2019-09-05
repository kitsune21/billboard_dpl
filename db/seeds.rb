# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
music_types = ['Pop', 'Rock', 'Hip Hop', 'Rap', 'Heavy Metal', 'Country', 'Alternative']
boards = ['Top 10 in the United States', 'Top 50 in the United States', 'Top 10 in the World', 'Top 50 in the World']



10.times do 
  board = Board.create(
    name: boards.sample
  )
  
  10.times do
    song = Song.create(
      name:  Faker::Game.title,
      plays: Faker::Types.rb_integer, 
      board_id: board.id
    )
  
    Artist.create(
      name: Faker::FunnyName.name,
      genre: music_types.sample,
      song_id: song.id
    )
  end
end

puts 'Data seeded.'