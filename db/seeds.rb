# cleaning the database for Users, Supermarkets, Products
puts "cleaning the database"
OrderedItem.destroy_all
Order.destroy_all
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

User.create!(
  name: "Florian", 
  email: "florian@fake.com", 
  password: "florian@fake.com", 
  points: rand(1..100)
)

puts "Finished creating #{User.count} new Users"
puts ""

# creating Supermarkets instances
Supermarket.create!(
  name: "Rewe", 
  address: "Friedrichstraße 100, Berlin"
)
Supermarket.create!(
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
# VEGETABLES
Product.create!(
    name: "Tomato",
    description: "Tomatoes are the Germans' favorite vegetable. From a botanical point of view, they belong to the berries. As a nightshade plant, they are a warmth-loving plant. Although tomatoes come in many shapes, the round ones are the most common in the world. Mainly from Spain, Italy, France, the Netherlands and Morocco. Fruity, piquant and spicy. Particularly suitable for salads.",
    full_price: rand(1.0..4.5).round(2),
    discounted_price: (full_price * 0.85).round(2),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl" ].sample)
    )

Product.create!(
    name: "Cucumber",
    description: "Cucumbers belong to the cucurbit family. Originally coming from the tropics, they have high temperature requirements and are almost exclusively planted in greenhouses. The fruits are about 30-40 cm long, slender and tapered at the ends. The skin is usually smooth and dark in color. Mainly grown in Greece, Spain, the Netherlands, Belgium and Germany.",
    full_price: rand(1.0..4.5).round(2),
    discounted_price: (full_price * 0.85).round(2),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl" ].sample)
    )

Product.create!(
    name: "Broccoli",
    description: "Broccoli is a vegetable related to cauliflower. Mainly grown in Germany, Italy, Spain, France, the Netherlands and England. More hearty than cauliflower, only a slight cabbage taste. Broccoli is prepared in a similar way to cauliflower.",
    full_price: rand(1.0..4.5).round(2),
    discounted_price: (full_price * 0.85).round(2),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl" ].sample)
    )

Product.create!(
    name: "Carrots",
    description: "Fresh carrots should be firm and crisp, with smooth and unblemished skin. Bright-orange colour indicates high carotene content; smaller types are the most tender. Carrots are used in salads and as relishes and are served as cooked vegetables and in stews and soups.",
    full_price: rand(1.0..4.5).round(2),
    discounted_price: (full_price * 0.85).round(2),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl" ].sample)
    )

Product.create!(
    name: "Romaine Lettuce",
    description: "Romaine lettuce has a tall, loose head. Its long, broad leaves are firm. The leaf margins are smooth, the central ribs are fleshy and pronounced. On the outside, the leaves are usually strong green and become lighter and yellowish towards the inside. Mainly grown in Germany, Italy, the Netherlands, France and Spain. Slightly tart, aromatic and hearty.",
    full_price: rand(1.0..4.5).round(2),
    discounted_price: (full_price * 0.85).round(2),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl" ].sample)
    )

# FRUITS
5.times do
    full_price = rand(1.0..4.5).round(2)
    Product.create!(
    name: Faker::Food.vegetables, 
    description: Faker::Food.description, 
    full_price: full_price,
    discounted_price: (full_price * 0.85).round(2),
    best_before_date: Faker::Date.forward(days: 5),  
    category: "Fruits",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd","Lidl" ].sample)
    )
 end

puts "Finished creating #{Product.count} new Products"

# if time, complete with other categories


# creating order instances
Order.create!(
  user: User.find_by(name: "Florian"),
  date: Faker::Date.backward(days: 5)
)

Order.create!(
  user: User.find_by(name: "Florian"),
  date: Faker::Date.backward(days: 4)
)

puts "Finished creating #{Order.count} new orders"

# creating ordered_items instances

OrderedItem.create!(
  order: Order.last,
  product: Product.last
)

OrderedItem.create!(
  order: Order.last,
  product: Product.last
)

OrderedItem.create!(
  order: Order.last,
  product: Product.last
)

OrderedItem.create!(
  order: Order.last,
  product: Product.last
)

puts "Finished creating #{OrderedItem.count} new ordered items"
