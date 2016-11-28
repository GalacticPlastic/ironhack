# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

tournament1 = Tournament.create!(name: "Tourney 1")
tournament2 = Tournament.create!(name: "Tourney 2")
tournament3 = Tournament.create!(name: "Tourney 3")

player1 = Player.create!(name: "Eric")
player2 = Player.create!(name: "Andy")
player3 = Player.create!(name: "Connie")
player4 = Player.create!(name: "Jimmy")
player5 = Player.create!(name: "Sarah")
player6 = Player.create!(name: "Mary")
player7 = Player.create!(name: "Danielle")
player8 = Player.create!(name: "Kim")

Registration.create!(tournament_id: tournament1.id, player_id: player1.id)
Registration.create!(tournament_id: tournament1.id, player_id: player4.id)
Registration.create!(tournament_id: tournament1.id, player_id: player7.id)
Registration.create!(tournament_id: tournament1.id, player_id: player8.id)

Registration.create!(tournament_id: tournament2.id, player_id: player2.id)
Registration.create!(tournament_id: tournament2.id, player_id: player3.id)
Registration.create!(tournament_id: tournament2.id, player_id: player5.id)
Registration.create!(tournament_id: tournament2.id, player_id: player7.id)

Registration.create!(tournament_id: tournament3.id, player_id: player2.id)
Registration.create!(tournament_id: tournament3.id, player_id: player5.id)
Registration.create!(tournament_id: tournament3.id, player_id: player6.id)
Registration.create!(tournament_id: tournament3.id, player_id: player8.id)