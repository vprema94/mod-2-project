# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

blair = User.create(username: "bc0123", password: "cookies", email: "bc123@yahoo.com", image: "/Users/blaircarroll/labs/mod2/mod-2-project/mod2/app/assets/images/funnyquant.jpg", first_name: "blair", last_name: "caro")
#
andy = User.create(username: "and0123", password: "cookies2", email: "and123@yahoo.com", image: "/Users/blaircarroll/labs/mod2/mod-2-project/mod2/app/assets/images/funnyquant.jpg", first_name: "andy", last_name: "warhol")


occasion1 = Occasion.create(name: "formal")
occasion2 = Occasion.create(name: "super casual")

outfit1 = Outfit.create(name: "my most favoritest fit shawty", rating: 5, occasion_id: 1)
outfit2 = Outfit.create(name: "its so so", rating: 3, occasion_id: 2)

category1 = Category.create(name: "top")
category2 = Category.create(name: "bottoms")
