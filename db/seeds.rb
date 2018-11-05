# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
	@password = Faker::String.random(8)
	user = User.create!(
		name: Faker::Name.first_name,
		email: Faker::Internet.email,
		password: @password,
		password_confirmation: @password
		)
end

25.times do
	potin = Gossip.create!(
		author: User.find(rand(User.first.id..User.last.id)),
		content: Faker::StarWars.quote,
		anonymous: 0
		)
end

25.times do
	comment = Comment.create!(
		commenter: User.find(rand(User.first.id..User.last.id)),
		gossip_id: Gossip.find(rand(Gossip.first.id..Gossip.last.id)).id,
		content: Faker::GreekPhilosophers.quote
		)
end