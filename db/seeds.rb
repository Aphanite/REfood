# cleaning the database for Users, Supermarkets, Products
puts "cleaning the database"
# Product.destroy_all
# Supermarket.destroy_all
User.destroy_all

# creating User instances
30.times do 
    User.create!(name: Faker::Name.unique.name, email: Faker::Internet.email(domain: "example.com"), password: Faker::Internet.password(min_length: 6, max_length: 8), points: rand(1..100))
end
puts "Finished creating #{User.count} new Users"
puts ""

# creating Supermarkets instances

