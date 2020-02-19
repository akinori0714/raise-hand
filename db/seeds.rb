# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "管理者アカウント", email: "admin@example.jp", password:  "11111111", password_confirmation: "11111111", sex: "不明", age: "不明", area: "不明", work: "不明", industry: "不明", skill: "不明", performance: "不明", introduce: "不明", project: "不明", want_to_do: "不明", want_to_meet: "不明", join_type: "不明", admin: true)