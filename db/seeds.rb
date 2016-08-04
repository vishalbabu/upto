# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

USERS = [
  { name: "Arumoy Shome", email: "aru@upto.com" },
  { name: "Ali Vira", email: "ali@upto.com" },
  { name: "Garrett Hardy", email: "ilovesex@boner.com" },
  { name: "Vishal Babu", email: "ilovecircles@upto.com" }
]

USERS.each do |user|
  User.create!(user) unless User.exists?(user)
end
