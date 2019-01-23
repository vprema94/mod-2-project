blair = User.create(username: "bc0123", password: "cookies", email: "bc123@yahoo.com", image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/what-do-the-snapchat-emojis-mean-5-1521645514.jpg", first_name: "Blair", last_name: "Carroll")
#
vanessa = User.create(username: "vprema", password: "maximus1", email: "vprema94@gmail.com", image: "https://www.gannett-cdn.com/presto/2018/11/01/USAT/788eaad4-8c20-4a46-92ff-f6df41d4813d-DrunkEmoji3110.jpg?crop=967,542,x0,y31&width=3200&height=1680&fit=bounds", first_name: "Vanessa", last_name: "Prema")

occassion1 = Occasion.create(name: "Sport")
occassion2 = Occasion.create(name: "Casual")
occassion3 = Occasion.create(name: "Business Casual")
occassion4 = Occasion.create(name: "Business Formal")
occassion5 = Occasion.create(name: "Festive")
occassion6 = Occasion.create(name: "Semiformal")
occassion7 = Occasion.create(name: "Formal")

category1 = Category.create(name: "Tops")
category2 = Category.create(name: "Bottoms")
category3 = Category.create(name: "Dresses/Rompers")
category4 = Category.create(name: "Coats/Jackets")
category5 = Category.create(name: "Shoes")
category6 = Category.create(name: "Accessories")

piece1 = Piece.create(name: "",clean_lvl: 0, )







outfit1 = Outfit.create(name: "my most favoritest fit shawty", rating: 5, occasion_id: 1)
outfit2 = Outfit.create(name: "its so so", rating: 3, occasion_id: 2)
