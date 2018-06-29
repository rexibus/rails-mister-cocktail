# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: "Rum")
Ingredient.create(name: "Whiskey")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Coca-Cola")
Ingredient.create(name: "Tonic")
Ingredient.create(name: "Orange juice")
Ingredient.create(name: "Mint")
Ingredient.create(name: "Lemon zest")
Ingredient.create(name: "Orange zest")

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Spritz")
Cocktail.create(name: "Cuba Libre")
Cocktail.create(name: "Whiskey Cola")

margarita = Cocktail.new(name: "Margarita")
margarita.remote_photo_url = "https://res.cloudinary.com/lizzyboredom/image/upload/v1530267168/Margarita-780x780.jpg"
margarita.save
