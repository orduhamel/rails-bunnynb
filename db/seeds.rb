require "open-uri"

puts "Deleting all Bookings..."
# Booking.destroy_all
puts "Done deleting all Bookings"
puts "Deleting all Bunnies..."
# Bunny.destroy_all
puts "Done deleting all Bunnies"
puts "Deleting all Users..."
# User.destroy_all
puts "Done deleting all Users"

puts "Implementing the Seeds..."

# bunnies
puts "Seeding 10 bunnies..."

canelle_image = URI.open("https://images.unsplash.com/photo-1517750199383-5442eaf9e041?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
canelle = Bunny.new(name: 'Canelle', description: 'Canelle aime le calme et les caresses. Elle n\'est pas compatible avec les chiens.', address: 'Nantes', price_per_day: 15, fur: 'fluffy', skill: 'calming', weight: 'light', size: 'medium', cleanliness: 4)
canelle.photo.attach(io: canelle_image, filename: "#{canelle.name.downcase}.jpg", content_type: 'image/jpg')
canelle.save!

vanille_image = URI.open("https://images.reference.com/amg-cms-reference-images/prod/how-does-a-rabbit-move_5bb324e2-3f6a-4708-97ce-493e1816f510.jpg?width=760&height=411&fit=crop")
vanille = Bunny.new(name: 'Vanille', description: 'Vanille est une lapine sportive. Elle aime les parcours d\'obstacles.', address: 'Saint-Herblain', price_per_day: 17, fur: 'soft', skill: 'acrobat', weight: 'normal', size: 'small', cleanliness: 5)
vanille.photo.attach(io: vanille_image, filename: "#{vanille.name.downcase}.jpg", content_type: 'image/jpg')
vanille.save!

lexie_image = URI.open("https://i.pinimg.com/originals/48/de/3c/48de3cbe7c4ec4ff9b5dce708deee158.jpg")
lexie = Bunny.new(name: 'Lexie', description: 'Lexie aime jouer et supporte très bien la compagnie des autres animaux.', address: 'Rezé', price_per_day: 17, fur: 'fluffy', skill: 'calming', weight: 'normal', size: 'dwarf', cleanliness: 4)
lexie.photo.attach(io: lexie_image, filename: "#{lexie.name.downcase}.jpg", content_type: 'image/jpg')
lexie.save!

pistache_image = URI.open("https://media.istockphoto.com/photos/closeup-of-a-funny-rabbit-isolated-on-white-picture-id1069594594?k=6&m=1069594594&s=612x612&w=0&h=0kR2oyNKYwd1jXD6U5Ce5uzg81fHN8y50e6jUfT2BCE=")
pistache = Bunny.new(name: 'Pistache', description: 'Pistache est un lapin qui aime faire la fête. Il est toujours partant pour aller boire un verre avec ses copains lapins', address: 'Nantes', price_per_day: 13, fur: 'rough', skill: 'partygoer', weight: 'normal', size: 'medium', cleanliness: 5)
pistache.photo.attach(io: pistache_image, filename: "#{pistache.name.downcase}.jpg", content_type: 'image/jpg')
pistache.save!

arya_image = URI.open("https://squeaksandnibbles.com/wp-content/uploads/2018/02/netherland-dwarf-971x1024.jpg")
arya = Bunny.new(name: 'Arya', description: 'Arya est très peureuse. Elle aime beacoup les calins.', address: 'Saint-Sebastien', price_per_day: 14, fur: 'soft', skill: 'cuddly', weight: 'light', size: 'dwarf', cleanliness: 3)
arya.photo.attach(io: arya_image, filename: "#{arya.name.downcase}.jpg", content_type: 'image/jpg')
arya.save!

choco_image = URI.open("https://images.unsplash.com/photo-1533993962330-7e4e1e64b2e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80")
choco = Bunny.new(name: 'Choco', description: 'Choco est un lapin qui aime plaire, il saura vous faire un charme.', address: 'Rezé', price_per_day: 16, fur: 'soft', skill: 'breeding', weight: 'heavy', size: 'large', cleanliness: 2)
choco.photo.attach(io: choco_image, filename: "#{choco.name.downcase}.jpg", content_type: 'image/jpg')
choco.save!

coco_image = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/73/British_Giant_rabbit_-_geograph.org.uk_-_163223.jpg")
coco = Bunny.new(name: 'Coco', description: 'Coco a le caractère d\'un lapin et la taille d\'un chien, il vous permet d\'avoir un bon compromis.', address: 'Nantes', price_per_day: 12, fur: 'rough', skill: 'boxer', weight: 'enormous', size: 'giant', cleanliness: 5)
coco.photo.attach(io: coco_image, filename: "#{coco.name.downcase}.jpg", content_type: 'image/jpg')
coco.save!

lulu_image = URI.open("https://images.unsplash.com/photo-1517108774990-66920c6f1847?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
lulu = Bunny.new(name: 'Lulu', description: 'Lulu n\'apprécie par la compagnie des autres animaux, elle passe l\'essentiel de son temps à dormir.', address: 'Saint-Herblain', price_per_day: 15, fur: 'soft', skill: 'boxer', weight: 'light', size: 'small', cleanliness: 4)
lulu.photo.attach(io: lulu_image, filename: "#{lulu.name.downcase}.jpg", content_type: 'image/jpg')
lulu.save!

paris_image = URI.open("https://images.unsplash.com/photo-1546555670-f68f7302f3a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80")
paris = Bunny.new(name: 'Paris', description: 'Paris est un lapin voyageur, il vous accompagnera avec plaisir pendant vos vacances.', address: 'Saint-Sebastien', price_per_day: 16, fur: 'soft', skill: 'calming', weight: 'normal', size: 'medium', cleanliness: 3)
paris.photo.attach(io: paris_image, filename: "#{paris.name.downcase}.jpg", content_type: 'image/jpg')
paris.save!

couscous_image = URI.open("https://images.unsplash.com/photo-1452857297128-d9c29adba80b?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")
couscous = Bunny.new(name: 'Couscous', description: 'Couscous aime manger et faire des câlins.', address: 'Nantes', price_per_day: 16 , fur: 'fluffy', skill: 'cuddly', weight: 'heavy', size: 'large', cleanliness: 4)
couscous.photo.attach(io: couscous_image, filename: "#{couscous.name.downcase}.jpg", content_type: 'image/jpg')
couscous.save!

puts "Finished seeding 10 bunnies..."

# owners
puts "Seeding 5 owners..."

melanie_image = URI.open("https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
melanie = User.new(email: 'melaniedupont@gmail.com', password: 'secret', first_name: 'Mélanie', last_name: 'Dupont')
melanie.photo.attach(io: melanie_image, filename: "#{melanie.first_name.downcase}.jpg", content_type: 'image/jpg')
melanie.save!

caroline_image = URI.open("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
caroline = User.new(email: 'carolinelegall@gmail.com', password: 'secret', first_name: 'Caroline', last_name: 'Le Gall')
caroline.photo.attach(io: caroline_image, filename: "#{caroline.first_name.downcase}.jpg", content_type: 'image/jpg')
caroline.save!

mathieu_image = URI.open("https://images.unsplash.com/photo-1553798194-cc0213ae7f99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80")
mathieu = User.new(email: 'mathieurosfelder@gmail.com', password: 'secret', first_name: 'Mathieu', last_name: 'Rosfelder')
mathieu.photo.attach(io: mathieu_image, filename: "#{mathieu.first_name.downcase}.jpg", content_type: 'image/jpg')
mathieu.save!

arthur_image = URI.open("https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
arthur = User.new(email: 'arthurbarbier@gmail.com', password: 'secret', first_name: 'Arthur', last_name: 'Barbier')
arthur.photo.attach(io: arthur_image, filename: "#{arthur.first_name.downcase}.jpg", content_type: 'image/jpg')
arthur.save!

brigitte_image = URI.open("https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
brigitte = User.new(email: 'brigittepoder@gmail.com', password: 'secret', first_name: 'Brigitte', last_name: 'Poder')
brigitte.photo.attach(io: brigitte_image, filename: "#{brigitte.first_name.downcase}.jpg", content_type: 'image/jpg')
brigitte.save!

puts "Finished seeding 5 owners..."

#renters
puts "Seeding 5 renters..."

simon_image = URI.open("https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
simon = User.new(email: 'simonbouchet@gmail.com', password: 'secret', first_name: 'Simon', last_name: 'Bouchet')
simon.photo.attach(io: simon_image, filename: "#{simon.first_name.downcase}.jpg", content_type: 'image/jpg')
simon.save!

sylvain_image = URI.open("https://images.unsplash.com/photo-1496345875659-11f7dd282d1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
sylvain = User.new(email: 'sylvaindavid@gmail.com', password: 'secret', first_name: 'Sylvain', last_name: 'David')
sylvain.photo.attach(io: sylvain_image, filename: "#{sylvain.first_name.downcase}.jpg", content_type: 'image/jpg')
sylvain.save!

margaux_image = URI.open("https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
margaux = User.new(email: 'margauxguichaoua@gmail.com', password: 'secret', first_name: 'Margaux', last_name: 'Guichaoua')
margaux.photo.attach(io: margaux_image, filename: "#{margaux.first_name.downcase}.jpg", content_type: 'image/jpg')
margaux.save!

nino_image = URI.open("https://images.unsplash.com/photo-1482264851290-446b18e3ee9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
nino = User.new(email: 'ninoesnault@gmail.com', password: 'secret', first_name: 'Nino', last_name: 'Esnault')
nino.photo.attach(io: nino_image, filename: "#{nino.first_name.downcase}.jpg", content_type: 'image/jpg')
nino.save!

zoe_image = URI.open("https://images.unsplash.com/photo-1477118476589-bff2c5c4cfbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
zoe = User.new(email: 'zoebillon@gmail.com', password: 'secret', first_name: 'Zoe', last_name: 'Billon')
zoe.photo.attach(io: zoe_image, filename: "#{zoe.first_name.downcase}.jpg", content_type: 'image/jpg')
zoe.save!

puts "Finished seeding 5 renters..."

# lien entre les bunnies et les owners

puts "Linking each bunny with its owner..."

canelle.user = melanie #owner
canelle.save!
vanille.user = melanie #owner
vanille.save!
lexie.user = melanie #owner
lexie.save!
pistache.user = caroline #owner
pistache.save!
arya.user = mathieu #owner
arya.save!
choco.user = mathieu #owner
choco.save!
coco.user = arthur #owner
coco.save!
lulu.user = brigitte #owner
lulu.save!
paris.user = arthur #owner
paris.save!
couscous.user = caroline #owner
couscous.save!

puts "Finished linking each bunny with its owner..."

#bookings

puts "Creating 5 bookings..."

booking1 = Booking.create!(total_price: 30, status: 'pending', start_date: DateTime.new(2020,4,3), end_date: DateTime.new(2020,4,5)) # location de 2 jours
booking2 = Booking.create!(total_price: 42, status: 'pending', start_date: DateTime.new(2020,3,20), end_date: DateTime.new(2020,3,23)) # location de 3 jours
booking3 = Booking.create!(total_price: 13, status: 'pending', start_date: DateTime.new(2020,3,15), end_date: DateTime.new(2020,3,16)) # location 1 jour
booking4 = Booking.create!(total_price: 24, status: 'pending', start_date: DateTime.new(2020,3,17), end_date: DateTime.new(2020,3,19)) # location de 2 jours
booking5 = Booking.create!(total_price: 160, status: 'pending', start_date: DateTime.new(2020,4,10), end_date: DateTime.new(2020,4,20)) # location de 10 jours

puts "Finished creating 5 bookings..."

# lien entre les bunnies, les renters et les bookings
puts "Linking each booking with a bunny and a renter..."

booking1.bunny = canelle #bunny
booking1.user = simon #renter
booking1.save!

booking2.bunny = arya #bunny
booking2.user = sylvain #renter
booking2.save!

booking3.bunny = pistache #bunny
booking3.user = margaux #renter
booking3.save!

booking4.bunny = coco #bunny
booking4.user = nino #renter
booking4.save!

booking5.bunny = paris #bunny
booking5.user = zoe #renter
booking5.save!

puts "Finished linking each booking with a bunny and a renter..."
puts "__________________________________________________________"
puts "Finished Seeding!"

# owner = User.create!(email: 'owner@example.com', password: 'secret')
# gouda = Bunny.new(name: 'Gouda', description: 'blabla', address: 'nantes', price_per_day: 20)
# gouda.user = owner
# gouda.save!

# renter = User.create!(email: 'renter@example.com', password: 'secret')
# booking = Booking.new(total_price: 20)
# booking.user = renter
# booking.bunny = gouda
# booking.save!
# p owner.booking_requests


