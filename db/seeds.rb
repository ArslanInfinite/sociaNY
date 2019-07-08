# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Admin.destroy_all
Reservation.destroy_all
Activity.destroy_all
Review.destroy_all


User.create!(username: "user1")

Activity.create!(title: "act1", description: "hot vinyasa yoga", location: "NY", capacity: 30, price: 40, date: 'figureout how to store dates')

Admin.create!(username: "admin1", company: "adminco1", activity_id: Activity.find_by(title: "act1").id)

Reservation.create!(location: "NY", capacity: 30, price: 40, datetime: "2019-03-02 10:00", user_id: User.find_by(username: "user1").id, activity_id: Activity.find_by(title: "act1").id)

Review.create!(content: "it was good", rating: 5, user_id: User.find_by(username: "user1").id, activity_id: Activity.find_by(title: "act1").id)
