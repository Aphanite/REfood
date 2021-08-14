# cleaning the database for Users, Supermarkets, Products
puts "cleaning the database"
Product.destroy_all
Supermarket.destroy_all
User.destroy_all

# creating User instances
15.times do 
  User.create!(
    name: Faker::Name.unique.name, 
    email: Faker::Internet.email, 
    password: Faker::Internet.password(min_length: 6, max_length: 8), 
    points: rand(1..100)
    )
end

puts "Finished creating #{User.count} new Users"
puts ""

# creating Supermarkets instances
supermarket_1 = Supermarket.create!(
  name: "Rewe", 
  address: "Friedrichstraße 100, Berlin"
)
supermarket_2 = Supermarket.create!(
  name: "Rewe", 
  address: "Tempelhofer Weg 11, Berlin"
)
Supermarket.create!(
  name: "Rewe", 
  address: "Friedrichstraße 60, Berlin"
    )
Supermarket.create!(
  name: "Alnatura", 
  address: "Schönhauser Allee 108, Berlin"
)
Supermarket.create!(
  name: "Alnatura", 
  address: "Friedrichstraße 191, Berlin"
)
Supermarket.create!(
  name: "Alnatura", 
  address: "Giesebrechtstraße 4, Berlin"
)
Supermarket.create!(
  name: "Aldi Süd",
  address: "Badstraße 4, Berlin"
)
Supermarket.create!(
  name: "Aldi Süd", 
  address: "Müllerstraße 128, Berlin"
)
Supermarket.create!(
  name: "Aldi Süd", 
  address: "Schwedter Str. 83, Berlin"
)
Supermarket.create!(
  name: "Lidl", 
  address: "Leipziger Str. 42, Berlin"
)
Supermarket.create!(
  name: "Lidl", 
  address: "Knesebeckstraße 47/48, Berlin"
)
Supermarket.create!(
  name: "Lidl", 
  address: "Heinrich-Heine-Straße 30, Berlin"
)

puts "Finished creating #{Supermarket.count} new Supermarkets"
puts ""

# creating Products instances
# FRUITS
5.times do
    full_price = rand(1.0..4.5).round(2)
    Product.create!(
    name: Faker::Food.fruits, 
    description: Faker::Food.description, 
    full_price: full_price, 
    discounted_price: full_price * 0.85,
    best_before_date: Faker::Date.forward(days: 5),  
    category: "Fruits",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd","Lidl" ].sample)
    )
end



#  VEGETABLES
5.times do
    full_price = rand(1.0..4.5).round(2)
    Product.create!(
    name: Faker::Food.vegetables, 
    description: Faker::Food.description, 
    full_price: full_price, 
    discounted_price: (full_price * 0.85).round(2),
    best_before_date: Faker::Date.forward(days: 5),  
    category: "Vegetables", 
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd","Lidl" ].sample)
    )
 end

puts "Finished creating #{Product.count} new Products"

# MEAT / FISH

# DAIRY

# PASTRIES

# GROCERIES
