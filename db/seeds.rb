# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do |n|
#   name = Faker::Mountain.name
#   password = "password"
#   User.create!(name: name,
#                password: password,
#                password_confirmation: password,
#                )
# end

# 51.times do |n|
#   name = Faker::Hobby.activity
#   Category.create!(name: name)
# end

# 102.times do |n|
#   user_id = 20
#   category_id = 159
#   name = Faker::FunnyName.name
#   email = Faker::Internet.email
#   subject = Faker::Restaurant.name
#   text = Faker::Restaurant.review

#   Message.create!(
#     user_id: user_id,
#     category_id: category_id,
#     name: name,
#     email: email,
#     subject: subject,
#     text: text,
#     visibility: true
#   )

# end

# admin1 = User.create!(name: "admin1",
#   password: "password",
#   password_confirmation: "password",
#   admin: true
#   )
# user1 = User.create!(name: "user1",
#   password: "password",
#   password_confirmation: "password",
#   admin: false
#   )

# category1 = Category.create!(name: "category1")

# Message.create!(
#   user_id: admin1.id,
#   category_id: category1.id,
#   name: admin1.name,
#   email: "admin1@email.abc",
#   subject: "visible=true",
#   text: "visible=false texttexttext",
#   visibility: true
# )
# Message.create!(
#   user_id: admin1.id,
#   category_id: category1.id,
#   name: admin1.name,
#   email: "admin1@email.abc",
#   subject: "subject2",
#   text: "visible=false texttexttext",
#   visibility: false
# )
# Message.create!(
#   user_id: user1.id,
#   category_id: category1.id,
#   name: user1.name,
#   email: "user1@email.abc",
#   subject: "visible=true",
#   text: "visible=true texttexttext",
#   visibility: true
# )
# Message.create!(
#   user_id: user1.id,
#   category_id: category1.id,
#   name: user1.name,
#   email: "user1@email.abc",
#   subject: "visible=false",
#   text: "visible=false texttexttext",
#   visibility: false
# )
