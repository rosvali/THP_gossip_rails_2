# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all
Gossip.destroy_all
# Tag.destroy_all
# GossipTagTable.destroy_all
# PrivateMessage.destroy_all

# h = "#"

2.times do
	# city = City.create(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
	# user1 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.matz, email: Faker::Internet.email, age: rand(15..80), city: city)
	# user2 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.matz, email: Faker::Internet.email, age: rand(15..80), city: city)
# 	t = Tag.create(title: (h + Faker::TvShows::BreakingBad.episode))
	# g = Gossip.create(title: Faker::App.name, content: Faker::Quote.matz, user: user1)
# 	g = Gossip.create(title: Faker::App.name, content: Faker::Quote.matz, user: user2)
# 	GossipTagTable.create(tag: t, gossip: g)
	# PrivateMessage.create(content: Faker::TvShows::RickAndMorty.quote, recipient: user2, sender: user1)
end