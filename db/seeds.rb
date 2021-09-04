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
  name: "Ena", 
  email: "ena@fake.com", 
  password: "ena@fake.com", 
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
    description: "Tomatoes are the major dietary source of the antioxidant lycopene, which has been linked to many health benefits, including reduced risk of heart disease and cancer. They are also a great source of vitamin C, potassium, folate, and vitamin K.",
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
    description: "Cucumbers are good sources of phytonutrients (plant chemicals that have protective or disease preventive properties) such flavonoids, lignans and triterpenes, which have antioxidant, anti-inflammatory and anti-cancer benefits.",
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
    description: "Packed with essential nutrients, beetroots are a great source of fiber, folate (vitamin B9), manganese, potassium, iron, and vitamin C. Beetroots and beetroot juice have been associated with numerous health benefits, including improved blood flow, lower blood pressure, and increased exercise performance.",
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
    description: "The high concentration of vitamins, minerals, antioxidants, and phytonutrients in peas provides important health benefits that range from keeping your eyes healthy to protecting you against certain cancers.",
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
    description: "More than just a tasty culinary plant, the onion contains natural sugar, vitamins A, B6, C and E, minerals such as sodium, potassium, iron and dietary fibre. In addition, onions are a good source of folic acid.",
    full_price_cents: full_price_per_kg * (unit / 1000.0),
    discounted_price_cents: (full_price_per_kg * (unit / 1000.0)) * 0.85,
    best_before_date: Faker::Date.forward(days: 5),
    category: category,
    amount: rand(1..10),
    unit: "#{unit}g",
    supermarket: Supermarket.find_by(name: ["Rewe", "Alnatura"].sample)
    )

# NEW VEGETABLES SEED PRODUCT
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
    description: "Lettuce is an excellent source vitamin A (21% DV) of vitamin K (97% DV) with high content of provitamin A compound, beta-carotene, in darker green lettuces, such as Romaine.",
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
    description: "Artichoke is rich in potassium and iron salts. In the artichoke there are also some sugars allowed to diabetics, such as mannite and inulin and other minerals such as copper, zinc, sodium, phosphorus and manganese.",
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
    description: "That same cup of parsley packs an estimated 80 mg of vitamin C (known for helping to boost immunity) along with vitamins A (which promotes healthy vision and development) and K (regarded for its bone-forming, anticancer properties).",
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
    description: "Cauliflowers are annual plants that reach about 0.5 metre (1.5 feet) tall and bear large rounded leaves that resemble collards (Brassica oleracea, variety acephala)",
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
    description: "Oranges are a good source of several vitamins and minerals, especially vitamin C, thiamine, folate, and potassium. Vitamin C. Oranges are an excellent source of vitamin C. One large orange provides over 100% of the RDI",
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

# NEW FRUITS PRODUCT SEED
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
    name: "Parmesan Cheese",
    description: "Parmesan cheese has a hard, gritty texture and is fruity and nutty in taste, and it is mostly consumed grated over pastas or used in soups and risottos although it can also be eaten on its own as a snack",
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
    name: "Eggs",
    description: "An oval or rounded body surrounded by a shell or membrane by which some animals (as birds, fish, insects, and reptiles) reproduce and from which the young hatches out",
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
    name: "Sour Cream",
    description: "Sour cream (in North American English, Australian English and New Zealand English) or soured cream (British English) is a dairy product obtained by fermenting regular cream with certain kinds of lactic acid bacteria",
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
    name: "Kefir",
    description: "Kefir is a fermented milk drink similar to a thin yogurt or ayran that is made from kefir grains, a specific type of mesophilic symbiotic culture.",
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
