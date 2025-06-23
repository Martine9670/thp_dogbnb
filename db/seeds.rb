# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Destruction des anciennes données
Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

# Création des villes
paris = City.create!(city_name: "Paris")
lyon = City.create!(city_name: "Lyon")

# Création des promeneurs
sitter1 = Dogsitter.create!(name: "Alice", city: paris)
sitter2 = Dogsitter.create!(name: "Bob", city: lyon)

# Création des chiens
dog1 = Dog.create!(name: "Rex", city: paris)
dog2 = Dog.create!(name: "Bella", city: lyon)
dog3 = Dog.create!(name: "Oscar", city: paris)

# Création des promenades
Stroll.create!(dog: dog1, dogsitter: sitter1)
Stroll.create!(dog: dog3, dogsitter: sitter1)
Stroll.create!(dog: dog2, dogsitter: sitter2)

