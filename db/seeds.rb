# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# cat1 = Cat.create( {name: "Tom", age: 24, birth_date: "1989-10-30", sex: "M", color: "orange"})
# cat2 = Cat.create( {name: "Mabel", age: 3, birth_date: "2011-04-23", sex: "F", color: "brown"})
# cat3 = Cat.create( {name: "Gun Cat", age: 2, birth_date: "2012-10-30", sex: "M", color: "black"})
# cat4 = Cat.create( {name: "Ferrari Cat", age: 1, birth_date: "2013-03-13", sex: "F", color: "white"})
# cat5 = Cat.create( {name: "Ned", age: 1, birth_date: "2014-03-15", sex: "M", color: "orange"})
#
# cat1.save!
# cat2.save!
# cat3.save!
# cat4.save!
# cat5.save!

CatRentalRequest.create!(cat_id: 1, start_date: "2014-01-23", end_date: "2014-02-23")
CatRentalRequest.create!(cat_id: 1, start_date: "2014-01-24", end_date: "2014-01-30")
CatRentalRequest.create!(cat_id: 1, start_date: "2014-03-13", end_date: "2014-04-01")
CatRentalRequest.create!(cat_id: 2, start_date: "2014-03-13", end_date: "2014-04-01")
CatRentalRequest.create!(cat_id: 5, start_date: "2014-01-24", end_date: "2014-01-30")
