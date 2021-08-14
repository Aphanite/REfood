# cleaning the database for Users, Supermarkets, Products
puts "cleaning the database"
# Product.destroy_all
Supermarket.destroy_all
User.destroy_all

# creating User instances
30.times do 
    User.create!(name: Faker::Name.unique.name, email: Faker::Internet.email(domain: "example.com"), password: Faker::Internet.password(min_length: 6, max_length: 8), points: rand(1..100))
end
puts "Finished creating #{User.count} new Users"
puts ""

# creating Supermarkets instances
Supermarket.create!(name: "Rewe", address: "Friedrichstraße 100, Berlin")
Supermarket.create!(name: "Rewe", address: "Tempelhofer Weg 11, Berlin")
Supermarket.create!(name: "Rewe", address: "Friedrichstraße 60, Berlin")
Supermarket.create!(name: "Alnatura", address: "Schönhauser Allee 108, Berlin")
Supermarket.create!(name: "Alnatura", address: "Friedrichstraße 191, Berlin")
Supermarket.create!(name: "Alnatura", address: "Giesebrechtstraße 4, Berlin")
Supermarket.create!(name: "Aldi Süd", address: "Badstraße 4, Berlin")
Supermarket.create!(name: "Aldi Süd", address: "Müllerstraße 128, Berlin")
Supermarket.create!(name: "Aldi Süd", address: "Schwedter Str. 83, Berlin")
Supermarket.create!(name: "Lidl", address: "Leipziger Str. 42, Berlin")
Supermarket.create!(name: "Lidl", address: "Knesebeckstraße 47/48, Berlin")
Supermarket.create!(name: "Lidl", address: "Heinrich-Heine-Straße 30, Berlin")

puts "Finished creating #{Supermarket.count} new Supermarkets"
puts ""

# creating Products instances

