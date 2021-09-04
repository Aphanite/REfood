# cleaning the database for Users, Supermarkets, Products
puts "cleaning the database"
OrderedItem.destroy_all
Order.destroy_all
Product.destroy_all
Supermarket.destroy_all
User.destroy_all

# creating User instances
5.times do 
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
  name: "Alnatura", 
  address: "Schönhauser Allee 108, Berlin"
)

Supermarket.create!(
  name: "Aldi Süd",
  address: "Badstraße 4, Berlin"
)

Supermarket.create!(
  name: "Lidl", 
  address: "Heinrich-Heine-Straße 30, Berlin"
)

puts "Finished creating #{Supermarket.count} new Supermarkets"
puts ""

# creating Products instances
# VEGETABLES
category = ["Vegetables", "Fruits", "Meat/Fish", "Dairy"]
category = category[0]
unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Tomatoes",
    description: "Tomatoes are the Germans' favorite vegetable. From a botanical point of view, they belong to the berries. As a nightshade plant, they are a warmth-loving plant. Although tomatoes come in many shapes, the round ones are the most common in the world. Mainly from Spain, Italy, France, the Netherlands and Morocco. Fruity, piquant and spicy. Particularly suitable for salads.",
    full_price_cents: full_price_per_kg * unit / 1000.0,
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )
    
unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Cucumbers",
    description: "Cucumbers belong to the cucurbit family. Originally coming from the tropics, they have high temperature requirements and are almost exclusively planted in greenhouses. The fruits are about 30-40 cm long, slender and tapered at the ends. The skin is usually smooth and dark in color. Mainly grown in Greece, Spain, the Netherlands, Belgium and Germany.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )
    
unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Beets",
    description: "Beets, or beetroots, are jewel-toned root vegetables. The leaves and roots of beets are packed with nutrition, including antioxidants that fight cell damage and reduce the risk of heart disease. They’re one of the few vegetables that contain betalains, a powerful antioxidant that gives beets their vibrant color.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Peas",
    description: "Green peas, or garden peas, are the small, spherical seeds that come from pods produced by the Pisum sativum plant.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Onions",
    description: "Onions have a light, golden-brown shell that surrounds a white or red, juicy flesh. Mainly grown in Spain, furthermore Chile and Egypt. Mild and slightly sweet. Onions can be used raw or cooked. Suitable for salads, soups, omelets.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

# NEW VEGETABLE SEED PRODUCT
unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Eggplant",
    description: "Eggplant, a warm-season vegetable belongs to the nightshade family. It forms a many branched plant with leaves and stems that have star-shaped (stellate) hair and stems. Its flowers are purple and the fruits are generally purple too.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Lettuce",
    description: "Lettuce, Lactuca sativa, is a leafy herbaceous annual or biennial plant in the family Asteraceae grown for its leaves which are used as a salad green. The lettuce plant can vary greatly in size, shape and leaf type."
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Artichokes",
    description: "artichoke, (Cynara cardunculus, variety scolymus), also called globe artichoke or French artichoke, large thistlelike perennial plant of the aster family (Asteraceae) grown for its edible flower buds."
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Parsley",
    description: "Parsley is a hardy, biennial that is grown and treated like an annual. It is the most widely grown herb for both garnish and flavoring."
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_vegetables = rand(250..450)
full_price_per_kg = full_price_vegetables
Product.create!(
    name: "Cauliflower",
    description: "Cauliflowers are annual plants that reach about 0.5 metre (1.5 feet) tall and bear large rounded leaves that resemble collards (Brassica oleracea, variety acephala)"
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

# FRUITS
category = ["Vegetables", "Fruits", "Meat/Fish", "Dairy"]
category = category[1]
unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Bananas",
    description: "Mainly grown in Ecuador, Panama, Costa Rica, Colombia and Dominican Republic. Meaty, aromatic and, depending on the degree of ripeness, from slightly sour to very sweet.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Grapes",
    description: "Wine grapes are the varieties of grapevine grown for making wine. Table grapes are varieties grown for fresh consumption that are as low in seeds as possible and with large berries. Grown worldwide, mainly Italy, Greece, South Africa, Spain and France (Germany produces almost exclusively wine grapes). Juicy, depending on the variety, sweet, sour or with a nutmeg aroma.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Oranges",
    description: "Oranges are by far the most popular type of citrus. Mainly grown in Spain, Morocco, Turkey, USA, South Africa, South America and Greece. Very juicy, aromatic, tender and sweet. Mainly consumed raw and pure as well as for fruit salads, desserts, cake toppings or jams.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Lemons",
    description: "Lemon trees produce fruit all year round, so the lemons are available all year round. Mainly grown in Spain, Argentina, Italy and Turkey. Very sour. The pulp and juice are used, for example, for salad dressings, creams, baked goods and soft drinks. Halve the lemons and squeeze the two halves.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Raspberries",
    description: "A small, deep colored berries which have a tender texture, a sweet delicate taste and a pleasant aroma. Raspberries are eaten raw, or used in cakes and jams.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

# NEW FRUIT PRODUCT SEED
unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Pears",
    description: "Pears are fruits produced and consumed around the world, growing on a tree and harvested in the Northern Hemisphere in late summer into October.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Strawberry",
    description: "The garden strawberry (or simply strawberry; Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Apricots",
    description: "Apricots (Prunus armeniaca) are stone fruits also known as Armenian plums. Round and yellow, they look like a smaller version of a peach but share the tartness of purple plums.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Watermelons",
    description: "Watermelon (Citrullus lanatus) is a flowering plant species of the Cucurbitaceae family and the name of its edible fruit. A scrambling and trailing vine-like plant, it was originally domesticated in Africa",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_fruits = rand(300..500)
full_price_per_kg = full_price_fruits
Product.create!(
    name: "Kiwi",
    description: "The ellipsoidal kiwi fruit is a true berry and has furry brownish green skin. The firm translucent green flesh has numerous edible purple-black seeds embedded around a white centre.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

# MEAT / FISH
category = ["Vegetables", "Fruits", "Meat/Fish", "Dairy"]
category = category[2]
unit = [250, 500, 750, 1000].sample
full_price_meat_fish = rand(800..1200)
full_price_per_kg = full_price_meat_fish
Product.create!(
    name: "Chicken",
    description: "Chicken is the most common type of poultry in the world.Owing to the relative ease and low cost of raising chickens—in comparison to mammals such as cattle or hogs—chicken meat and chicken eggs have become prevalent in numerous cuisines.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_meat_fish = rand(800..1200)
full_price_per_kg = full_price_meat_fish
Product.create!(
    name: "Turkey",
    description: "Turkey meat, commonly referred to as just turkey, is the meat from turkeys, typically domesticated turkeys but also wild turkeys. It is a popular poultry dish, especially in North America.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_meat_fish = rand(800..1200)
full_price_per_kg = full_price_meat_fish
Product.create!(
    name: "Beef",
    description: "Beef can be prepared in various ways; cuts are often used for steak, which can be cooked to varying degrees of doneness, while trimmings are often ground or minced, as found in most hamburgers. Beef contains protein, iron, and vitamin B12",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_meat_fish = rand(800..1200)
full_price_per_kg = full_price_meat_fish
Product.create!(
    name: "Salmon",
    description: "Salmon is a common food fish classified as an oily fish with a rich content of protein and omega-3 fatty acids.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_meat_fish = rand(800..1200)
full_price_per_kg = full_price_meat_fish
Product.create!(
    name: "Herring",
    description: "These oily fish also have a long history as an important food fish, and are often salted, smoked, or pickled.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_meat_fish = rand(800..1200)
full_price_per_kg = full_price_meat_fish
Product.create!(
    name: "Swordfish",
    description: "Swordfish is a mild-tasting, white-fleshed fish with a meaty texture. It is sold exclusively in steaks. Its mild taste makes it a particularly good choice for those who are unsure if they like fish",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

# DAIRY
category = ["Vegetables", "Fruits", "Meat/Fish", "Dairy"]
category = category[3]
unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Butter",
    description: "Butter is a dairy product made from the fat and protein components of churned cream. It is a semi-solid emulsion at room temperature, consisting of approximately 80% butterfat.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Milk",
    description: "Dairy products or milk products are a type of food produced from or containing the milk of mammals, most commonly cattle, water buffaloes, goats, sheep, and camels",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}ml",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Cheese",
    description: "Dairy products or milk products are a type of food produced from or containing the milk of mammals, most commonly cattle, water buffaloes, goats, sheep, and camels.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Greek Yogurt",
    description: "Yogurt is a fermented milk product that contains the characteristic bacterial cultures Lactobacillus bulgaricus and Streptococcus thermophilus. All yogurt must contain at least 8.25% solids not fat.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Ice Cream",
    description: "Ice cream is a frozen dairy dessert obtained by freezing the ice cream mix with continuous agitation. It contains milk products, sweetening materials, stabilizers, colors, flavors, and egg products.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

# NEW DAIRY PRODUCTS

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Ice Cream",
    description: "Ice cream is a frozen dairy dessert obtained by freezing the ice cream mix with continuous agitation. It contains milk products, sweetening materials, stabilizers, colors, flavors, and egg products.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Ice Cream",
    description: "Ice cream is a frozen dairy dessert obtained by freezing the ice cream mix with continuous agitation. It contains milk products, sweetening materials, stabilizers, colors, flavors, and egg products.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Ice Cream",
    description: "Ice cream is a frozen dairy dessert obtained by freezing the ice cream mix with continuous agitation. It contains milk products, sweetening materials, stabilizers, colors, flavors, and egg products.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Ice Cream",
    description: "Ice cream is a frozen dairy dessert obtained by freezing the ice cream mix with continuous agitation. It contains milk products, sweetening materials, stabilizers, colors, flavors, and egg products.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

unit = [250, 500, 750, 1000].sample
full_price_dairy = rand(150..300)
full_price_per_kg = full_price_dairy
Product.create!(
    name: "Ice Cream",
    description: "Ice cream is a frozen dairy dessert obtained by freezing the ice cream mix with continuous agitation. It contains milk products, sweetening materials, stabilizers, colors, flavors, and egg products.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura", "Aldi Süd", "Lidl"].sample)
    )

puts "Finished creating #{Product.count} new Products"

# # creating order instances
# Order.create!(
#   user: User.find_by(name: "Florian"),
# )

# Order.create!(
#   user: User.find_by(name: "Florian"),
# )

# puts "Finished creating #{Order.count} new orders"

# # creating ordered_items instances
# OrderedItem.create!(
#   order: Order.last,
#   product: Product.last
# )

# OrderedItem.create!(
#   order: Order.last,
#   product: Product.last
# )

# OrderedItem.create!(
#   order: Order.last,
#   product: Product.last
# )

# OrderedItem.create!(
#   order: Order.last,
#   product: Product.last
# )

# puts "Finished creating #{OrderedItem.count} new ordered items"
