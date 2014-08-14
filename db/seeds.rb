# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


20.times {
  User.create(name: 'Heyo', birthday_wish: 'Lorem ipsum Dolor amet et eiusmod tempor ullamco ea quis enim ad culpa. Lorem ipsum Labore tempor incididunt labore Duis ad magna laboris id in culpa cupidatat.')
}

