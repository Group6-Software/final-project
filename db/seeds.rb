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