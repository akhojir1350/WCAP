# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1=User.create!(:email=>'ali.nosrati72@gmail.com',:password=>'12345678',:admin => true, :approved => true)
user2=User.create!(:email=>'maryam.younesi00@gmail.com',:password=>'12345678',:admin => true, :approved => true)
user1.profile.update(:first_name => 'Ali', :last_name => 'Nosrati')
user2.profile.update(:first_name => 'Maryam', :last_name => 'Younesi')
