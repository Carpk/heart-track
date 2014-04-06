# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(initials: "sk", birthdate: "1980-09-01", password: "password")

hr=145
date=2013060114
10.times do
  hr+=1 #if rand(1..2) == 2
  date+=rand(300..475)
  Heartlog.create(user_id: 1, heartrate: hr, logdate: date)
end
date=2013060114
10.times do
  hr+=1 #if rand(1..2) == 2
  date+=rand(300..575)
  Heartlog.create(user_id: 1, heartrate: hr, logdate: date)
end