# cleaning the database for Users, Supermarkets, Products
puts "cleaning the database"
Product.destroy_all
Supermarket.destroy_all
User.destroy_all

# creating User instances


