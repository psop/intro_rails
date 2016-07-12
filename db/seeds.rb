# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Hello World!"
puts "這個種子檔會自動建立一個帳號, 並且創建 20 個 topics"

create_account = User.create([email: 'example@gmail.com', password: '12345678', password_confirmation: '12345678', name: '測試用帳號'])

create_topics = for i in 1..20 do
                   Topic.create!([title: "Topic no.#{i}", description: "這是用種子建立的第 #{i} 個討論版", user_id: "1"])
                end