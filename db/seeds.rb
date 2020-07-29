# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

recipes = Recipe.create([{ title: "Shrimp Scampi", description: "Delicious", prep_time: 30, cook_time: 40, serving_amount: 3 }])
Ingredient.create(name: "linguine", quantity: 1, unit_of_measurement: "pound", description: "", recipe: recipes.first)
Ingredient.create(name: "shrimp", quantity: 10, unit_of_measurement: "ounce", description: "peeled and deveined", recipe: recipes.first)
Direction.create(direction_text: "Start boiling water in a medium sized pot.", recipe: recipes.first)
Direction.create(direction_text: "Slice the shrimp in half and throw into a hot pan with oil. Season with salt and pepper.", recipe: recipes.first)
