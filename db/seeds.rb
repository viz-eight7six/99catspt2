# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: "one", password:"password")
User.create!(username: "two", password:"password")
User.create!(username: "three", password:"password")


Cat.create!(birth_date: '10-09-1990', color: 'orange', name: 'fluff', sex: 'F', user_id: 1)
Cat.create!(birth_date: '10-09-1990', color: 'orange', name: 'mitts', sex: 'F', user_id: 1)
Cat.create!(birth_date: '10-09-1990', color: 'orange', name: 'nowball', sex: 'F', user_id: 1)
Cat.create!(birth_date: '10-09-1990', color: 'orange', name: 'yes', sex: 'F', user_id: 1)
Cat.create!(birth_date: '10-09-1990', color: 'orange', name: 'cathead', sex: 'F', user_id: 1)
Cat.create!(birth_date: '10-09-1990', color: 'orange', name: 'dog', sex: 'F', user_id: 1)
Cat.create!(birth_date: '10-09-1990', color: 'orange', name: 'breakfast', sex: 'F', user_id: 1)
Cat.create!(birth_date: '10-09-1990', color: 'orange', name: 'Jeff', sex: 'F', user_id: 3)


CatRentalRequest.create!(cat_id: 8, start_date: "15-02-2017", end_date: "14-12-2080", user_id: 2)
CatRentalRequest.create!(cat_id: 1, start_date: "15-02-2017", end_date: "14-12-2080", user_id: 1)
CatRentalRequest.create!(cat_id: 2, start_date: "15-02-2017", end_date: "14-12-2080", user_id: 2)
CatRentalRequest.create!(cat_id: 3, start_date: "15-02-2017", end_date: "14-12-2080", user_id: 3)
CatRentalRequest.create!(cat_id: 8, start_date: "15-02-2023", end_date: "14-12-2080", user_id: 1)
CatRentalRequest.create!(cat_id: 8, start_date: "11-02-2017", end_date: "14-12-2017", user_id: 2)
CatRentalRequest.create!(cat_id: 8, start_date: "01-02-2000", end_date: "14-12-2000", user_id: 2)
