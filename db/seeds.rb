# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Classhour.create!(hour:1, pupil_id:1,user_id:1,)
Pupil.create!(name:"student 1", email:"email@example.com",
parent1:"emailp1@example.com", parent2:"emailp2@example.com")
User.create!(name:"Peter Johnson", email:"pjohnson141@gmail.com", subject:"science")

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  User.create!(name:  name,
               email: email)
end
10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  Pupil.create!(name:  name,
               email: email)
end
3.times do |h|
  10.times do |n|
    pupil_id = n+1
    user_id = h+1
    hour = h+1
  Classhour.create!(pupil_id:  pupil_id,
               user_id: user_id, 
               hour: hour)
  end
end
# Microposts
pupils = Pupils.order(:created_at).take(9)
5.times do
  content = Faker::Lorem.sentence(2)
  pupils.each { |n| pupils.log.create!(content: content, messagetype: "email") }
end


