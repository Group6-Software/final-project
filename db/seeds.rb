# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

emp = Employee.create(name: 'abc', email_address: 'softwareproject.grp6@gmail.com', address: 'abc')
emp.save!
emp.employee_id = emp.id
emp.save!

Item.create(item_id: 1, name: 'Paulista', cost: 2403)
Item.create(item_id: 2, name: 'Carlo', cost: 712)
Item.create(item_id: 3, name: 'Vishwani', cost: 0)
Item.create(item_id: 4, name: 'Palee', cost:	912)
Item.create(item_id: 5, name: 'Parachi', cost:	801)
Item.create(item_id: 6, name: 'Preeti', cost: 445)
Item.create(item_id: 7, name: 'Arya', cost: 579)
Item.create(item_id: 8, name: 'Asha', cost: 1202)
Item.create(item_id: 9, name: 'Anmol', cost: 1046)
Item.create(item_id: 10, name: 'Deep_Red', cost: 1602)
Item.create(item_id: 11, name: 'Maleeka', cost:	507)
Item.create(item_id: 12, name: 'Hansa', cost: 792)
Item.create(item_id: 13, name: 'Hot_Chilie', cost: 659)
Item.create(item_id: 14, name: 'Royal_555', cost: 445)
Item.create(item_id: 15, name: 'Revival', cost: 623)
Item.create(item_id: 16, name: 'Sky_Red', cost: 757)
Item.create(item_id: 17, name: 'SK3', cost: 0)
Item.create(item_id: 18, name: 'Anmol', cost: 957)
Item.create(item_id: 19, name: 'Baran', cost: 356)
