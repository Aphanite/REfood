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
full_price = rand(100..450)
Product.create!(
    name: "Tomatoes",
    description: "Tomatoes are the Germans' favorite vegetable. From a botanical point of view, they belong to the berries. As a nightshade plant, they are a warmth-loving plant. Although tomatoes come in many shapes, the round ones are the most common in the world. Mainly from Spain, Italy, France, the Netherlands and Morocco. Fruity, piquant and spicy. Particularly suitable for salads.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Cucumbers",
    description: "Cucumbers belong to the cucurbit family. Originally coming from the tropics, they have high temperature requirements and are almost exclusively planted in greenhouses. The fruits are about 30-40 cm long, slender and tapered at the ends. The skin is usually smooth and dark in color. Mainly grown in Greece, Spain, the Netherlands, Belgium and Germany.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Beets",
    description: "Beets, or beetroots, are jewel-toned root vegetables. The leaves and roots of beets are packed with nutrition, including antioxidants that fight cell damage and reduce the risk of heart disease. They’re one of the few vegetables that contain betalains, a powerful antioxidant that gives beets their vibrant color.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Peas",
    description: "Green peas, or garden peas, are the small, spherical seeds that come from pods produced by the Pisum sativum plant.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Onions",
    description: "Onions have a light, golden-brown shell that surrounds a white or red, juicy flesh. Mainly grown in Spain, furthermore Chile and Egypt. Mild and slightly sweet. Onions can be used raw or cooked. Suitable for salads, soups, omelets.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Vegetables",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

# FRUITS

full_price = rand(100..450)
Product.create!(
    name: "Bananas",
    description: "Mainly grown in Ecuador, Panama, Costa Rica, Colombia and Dominican Republic. Meaty, aromatic and, depending on the degree of ripeness, from slightly sour to very sweet.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Fruits",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Grapes",
    description: "Wine grapes are the varieties of grapevine grown for making wine. Table grapes are varieties grown for fresh consumption that are as low in seeds as possible and with large berries. Grown worldwide, mainly Italy, Greece, South Africa, Spain and France (Germany produces almost exclusively wine grapes). Juicy, depending on the variety, sweet, sour or with a nutmeg aroma.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Fruits",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Oranges",
    description: "Oranges are by far the most popular type of citrus. Mainly grown in Spain, Morocco, Turkey, USA, South Africa, South America and Greece. Very juicy, aromatic, tender and sweet. Mainly consumed raw and pure as well as for fruit salads, desserts, cake toppings or jams.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Fruits",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Lemons",
    description: "Lemon trees produce fruit all year round, so the lemons are available all year round. Mainly grown in Spain, Argentina, Italy and Turkey. Very sour. The pulp and juice are used, for example, for salad dressings, creams, baked goods and soft drinks. Halve the lemons and squeeze the two halves.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Fruits",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Raspberries",
    description: "A small, deep colored berries which have a tender texture, a sweet delicate taste and a pleasant aroma. Raspberries are eaten raw, or used in cakes and jams.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Fruits",
    amount: rand(1..10),
    unit: ["100 gr", "250 gr", "500 gr", "750 gr", "1000 gr"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

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
