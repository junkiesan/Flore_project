# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# require 'open-uri'
# require 'nokogiri'

# https://www.aujardin.info/plantes/lierre_du_diable.php

# Cleaning

puts "Destroy Plants"
Plant.destroy_all
puts "Destroy Gardens"
Garden.destroy_all
puts "Destroy Users"
User.destroy_all

# Users
puts "Creating sweeeeet Users"

julien = User.create(name: 'Julien', email: 'bouland.julien@gmail.com', password: '17021995')

# Gardens
puts "Creating sweeeeet Gardens"

garden_1 = Garden.create(name: 'Appart de Julien', user: julien)
file = URI.open('https://images.pexels.com/photos/919278/pexels-photo-919278.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
garden_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
garden_1.save!

# Plants
puts "Creating sweeeeet Plants"

plant_1 = Plant.create(science_name: 'Pothos', nickname: 'Fouss', origin: 'Iles Salomon', genre: "plante", advice: 'Facile de culture, il pousse rapidement, sans demander trop de soins et son bouturage est un jeu d enfant. Que demander de plus ?', garden: garden_1, story: "Le Pothos (Epipremnum aureum) a pour surnom « lierre d'intérieur » bien qu'il n'ait pourtant rien à voir avec un lierre. Originaire des îles Salomon, cette plante grimpante vigoureuse fait partie de la famille des Aracées.")
file = URI.open('https://static.aujardin.info/cache/th/img10/scindapsus-aureus-feuille-600x450.webp')
plant_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
plant_1.save!

plant_2 = Plant.create(science_name: 'Rosier', nickname: 'Bae', origin: 'Asie', genre: "arbuste à fleurs", advice: 'Rustique mais protégez le point de greffe par un buttage de 20 cm', garden: garden_1, story: "C'est au moyen-âge que les premières roses ont été cultivées, elles furent importées par les croisés en provenance de l'orient. C'est ensuite au XVIIIème siècle que les français commençèrent à les croiser pour créer de nouvelles variétés.")
file = URI.open('https://static.aujardin.info/cache/th/img9/rosa-fleur-600x450.webp')
plant_2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
plant_2.save!

# Scrapping plants

# html_content = open('https://www.aujardin.info/search?q=roses').read
# doc = Nokogiri::HTML(html_content)
