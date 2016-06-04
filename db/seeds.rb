# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
m = 0
while m < 30
  company = Company.new
  company.company_name = Faker::Company.name
  company.save
  m = m + 1
end

puts "There are now #{Company.count} companies in the database."
