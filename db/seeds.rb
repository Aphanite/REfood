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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
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
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

# MEAT / FISH
full_price = rand(100..450)
Product.create!(
    name: "Chicken",
    description: "Chicken is the most common type of poultry in the world.Owing to the relative ease and low cost of raising chickens—in comparison to mammals such as cattle or hogs—chicken meat and chicken eggs have become prevalent in numerous cuisines.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Meat/Fish",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )
    
full_price = rand(100..450)
Product.create!(
    name: "Turkey",
    description: "Turkey meat, commonly referred to as just turkey, is the meat from turkeys, typically domesticated turkeys but also wild turkeys. It is a popular poultry dish, especially in North America.",
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Meat/Fish",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Beef",
    description: "Beef can be prepared in various ways; cuts are often used for steak, which can be cooked to varying degrees of doneness, while trimmings are often ground or minced, as found in most hamburgers. Beef contains protein, iron, and vitamin B12",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Meat/Fish",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Salmon",
    description: "Salmon is a common food fish classified as an oily fish with a rich content of protein and omega-3 fatty acids.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Meat/Fish",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Herring",
    description: "These oily fish also have a long history as an important food fish, and are often salted, smoked, or pickled.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Meat/Fish",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )
    
full_price = rand(100..450)
Product.create!(
    name: "Swordfish",
    description: "Swordfish is a mild-tasting, white-fleshed fish with a meaty texture. It is sold exclusively in steaks. Its mild taste makes it a particularly good choice for those who are unsure if they like fish",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Meat/Fish",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

# DAIRY
full_price = rand(100..450)
Product.create!(
    name: "Butter",
    description: "Butter is a dairy product made from the fat and protein components of churned cream. It is a semi-solid emulsion at room temperature, consisting of approximately 80% butterfat.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Dairy",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Milk",
    description: "",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Dairy",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Cheese",
    description: "Dairy products or milk products are a type of food produced from or containing the milk of mammals, most commonly cattle, water buffaloes, goats, sheep, and camels.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Dairy",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Yogurt",
    description: "Yogurt is a fermented milk product that contains the characteristic bacterial cultures Lactobacillus bulgaricus and Streptococcus thermophilus. All yogurt must contain at least 8.25% solids not fat.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Dairy",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

full_price = rand(100..450)
Product.create!(
    name: "Ice Cream",
    description: "Ice cream is a frozen dairy dessert obtained by freezing the ice cream mix with continuous agitation. It contains milk products, sweetening materials, stabilizers, colors, flavors, and egg products.",
    full_price_cents: full_price,
    discounted_price_cents: (full_price * 0.85),
    best_before_date: Faker::Date.forward(days: 5),
    category: "Dairy",
    amount: rand(1..10),
    unit: ["100g", "250g", "500g", "750g", "1000g"].sample,
    supermarket: Supermarket.find_by(name: ["Rewe"])
    )

puts "Finished creating #{Product.count} new Products"

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
