# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Activity.destroy_all
Review.destroy_all


Activity.create!(title: "Hot Yoga", description: "Hot yoga with temperatures ranging from 100-110 degrees.", location: "Brooklyn", capacity: 30, price: 40, datetime: '2019-07-18 11:00')

Activity.create!(title: "Kygo Concert", description: "Enjoy one of the world's best DJs: Kygo!!", location: "MSG", capacity: 20789, price: 150, datetime: '2019-08-08 11:00')

Activity.create!(title: "Bar Crawl", description: "Visit the West Village's best bars", location: "West Village", capacity: 50, price: 75, datetime: '2019-08-01 19:00')

Activity.create!(title: "Bird Watching", description: "Study the city's birds", location: "Central Park", capacity: 100, price: 5, datetime: '2019-07-24 11:00')

Activity.create!(title: "Met's Game", description: "Watch the Phillies (inferior opponents)", location: "Citi Field", capacity: 41922, price: 230, datetime: '2019-07-30 11:00')

Activity.create!(title: "Next Level Gaming", description: "Mortal Kombat & Smash Bros Tournaments", location: "Brooklyn", capacity: 40, price: 20, datetime: '2019-11-15 18:00')

Activity.create!(title: "Museum of Modern Art", description: "Amazing Art From Around The World", location: "New York", capacity: 20000, price: 20, datetime: '2019-08-28 10:00')

Activity.create!(title: "Olympic Weightlifting", description: "Big Gainzzz", location: "Bronx", capacity: 20, price: 50, datetime: '2019-12-03 14:00')

Activity.create!(title: "Boat Rides", description: "Coast The Hudson River on speed boats like Die Hard", location: "Hudson", capacity: 2, price: 100, datetime: '2019-09-01 12:00')

Activity.create!(title: "Broadway", description: "School of Rock & Hamilton Double Show", location: "NYC", capacity: 700, price: 120, datetime: '2019-10-06 19:00')
