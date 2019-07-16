# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Marcos")
User.create!(name: "Thor")
User.create!(name: "Eric")
User.create!(name: "Rabbi")
User.create!(name: "Maneki")

Event.create!(description: "Birthday party 1", creator_id: 1, date: "2019-05-05")
Event.create!(description: "Birthday party 2", creator_id: 1, date: "2019-09-12")
Event.create!(description: "Birthday party 3", creator_id: 2, date: "2019-07-04")
Event.create!(description: "Birthday party 4", creator_id: 4, date: "2019-10-22")

EventMiddle.create!(attendee_id: 1, attended_event_id: 1)
EventMiddle.create!(attendee_id: 1, attended_event_id: 2)
EventMiddle.create!(attendee_id: 1, attended_event_id: 3)
EventMiddle.create!(attendee_id: 1, attended_event_id: 4)
EventMiddle.create!(attendee_id: 2, attended_event_id: 1)
EventMiddle.create!(attendee_id: 2, attended_event_id: 2)
EventMiddle.create!(attendee_id: 3, attended_event_id: 1)
EventMiddle.create!(attendee_id: 3, attended_event_id: 3)
EventMiddle.create!(attendee_id: 4, attended_event_id: 1)
EventMiddle.create!(attendee_id: 5, attended_event_id: 1)
EventMiddle.create!(attendee_id: 5, attended_event_id: 4)