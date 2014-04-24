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

cat1 = Cat.create(name: "Sammy", sex: "M", age: 11, color: "brown")
cat2 = Cat.create(name: "Serena", sex: "F", age: 8, color: "orange")
cat3 = Cat.create(name: "Balthazar", sex: "M", age: 18, color: "white")
cat4 = Cat.create(name: "Beauty", sex: "F", age: 2, color: "tabby")

crr1 = CatRentalRequest.create(cat_id: cat1.id, start_date: Date.today, end_date: Date.tomorrow, status: "PENDING")
crr2 = CatRentalRequest.create(cat_id: cat1.id, start_date: Date.tomorrow, end_date: Date.new(2014, 4, -3), status: "PENDING")
crr3 = CatRentalRequest.create(cat_id: cat1.id, start_date: Date.tomorrow, end_date: Date.new(2014, 4, -3), status: "PENDING")
crr4 = CatRentalRequest.create(cat_id: cat2.id, start_date: Date.tomorrow, end_date: Date.new(2014, 4, 25), status: "PENDING")
