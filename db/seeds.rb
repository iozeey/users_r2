# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 
5.times do |index|
    url = "https://dummyjson.com/users?limit=30&skip=#{rand(0...5)}"
    LoadUsersJob.perform_async(url)
end
