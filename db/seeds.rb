# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# https://www.aujardin.info/plantes/lierre_du_diable.php

# Cleaning

puts "Destroy Plants"
Plant.destroy_all
puts "Destroy Gardens"
Garden.destroy_all
puts "Destroy Users"
User.destroy_all

# Users

julien = User.create(name: 'Julien', email: 'bouland.julien@gmail.com', password: '17021995')

# Gardens

garden_1 = Garden.new(name: 'Appart de Julien', user: julien)
# file = URI.open('https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2018.2F07.2F30.2F8c5b9e9e-20ae-4b77-aced-23318ca9289a.2Ejpeg/750x562/quality/80/crop-from/center/cr/wqkgTWFpemVuYSAvIEZlbW1lIEFjdHVlbGxl/tacos-de-poulet-marine-sauce-coriandre-et-tequila.jpeg')
# truck_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# truck_1.save!

# Plants

plant_1 = Plant.new(science_name: 'Pothos', origin: 'Iles Salomon', type: "plante", advice: 'Facile de culture, il pousse rapidement, sans demander trop de soins et son bouturage est un jeu d enfant. Que demander de plus ?', garden: garden_1, story: "Le Pothos (Epipremnum aureum) a pour surnom « lierre d'intérieur » bien qu'il n'ait pourtant rien à voir avec un lierre. Originaire des îles Salomon, cette plante grimpante vigoureuse fait partie de la famille des Aracées.")
# file = URI.open('https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2018.2F07.2F30.2F8c5b9e9e-20ae-4b77-aced-23318ca9289a.2Ejpeg/750x562/quality/80/crop-from/center/cr/wqkgTWFpemVuYSAvIEZlbW1lIEFjdHVlbGxl/tacos-de-poulet-marine-sauce-coriandre-et-tequila.jpeg')
# plant_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# plant_1.save!

plant_2 = Plant.new(science_name: 'Rosier', origin: 'Asie', type: "arbuste à fleurs", advice: 'Rustique mais protégez le point de greffe par un buttage de 20 cm', garden: garden_1, story: "C'est au moyen-âge que les premières roses ont été cultivées, elles furent importées par les croisés en provenance de l'orient. C'est ensuite au XVIIIème siècle que les français commençèrent à les croiser pour créer de nouvelles variétés.")
# file = URI.open('https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2018.2F07.2F30.2F8c5b9e9e-20ae-4b77-aced-23318ca9289a.2Ejpeg/750x562/quality/80/crop-from/center/cr/wqkgTWFpemVuYSAvIEZlbW1lIEFjdHVlbGxl/tacos-de-poulet-marine-sauce-coriandre-et-tequila.jpeg')
# plant_1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# plant_1.save!
