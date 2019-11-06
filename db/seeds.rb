# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

for index_user in 0 ... 5 do
    User.create(email:Faker::Internet.email,description:"desc #{index_user}",first_name:Faker::Name.first_name,last_name:Faker::Name.last_name)    
end
 Event.create(start_date:"2019-11-20", duration:"50", title:"mama est", description:"djjcdn kdncndsni dcksncksdkc dkienenfefnkenfke feknefk", price:"500", location:"tana")
