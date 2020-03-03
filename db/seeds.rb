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

canelle = Bunny.create!(name: 'Canelle', description: 'Canelle aime le calme et les caresses. Elle n\'est pas compatible avec les chiens.', address: 'Nantes', price_per_day: 15, fur: 'fluffy', skill: 'calming', weight: 'light', size: 'dwarf', cleanliness: 4)
vanille = Bunny.create!(name: 'Vanille', description: 'Vanille est une lapine sportive. Elle aime les parcours d\'obstacles.', address: 'Saint-Herblain', price_per_day: 17, fur: 'soft', skill: 'acrobat', weight: 'normal', size: 'small', cleanliness: 5)
lexie = Bunny.create!(name: 'Lexie', description: 'Lexie aime jouer et supporte très bien la compagnie des autres animaux.', address: 'Rezé', price_per_day: 17, fur: 'fluffy', skill: 'calming', weight: 'normal', size: 'small', cleanliness: 4)
pistache = Bunny.create!(name: 'Pistache', description: 'Pistache est un lapin qui aime faire la fête. Il est toujours partant pour aller boire un verre avec ses copains lapins', address: 'Nantes', price_per_day: 13, fur: 'rough' personnality: '', skill: 'partygoer', weight: 'normal', size: 'medium', cleanliness: 5)
arya = Bunny.create!(name: 'Arya', description: 'Arya est très peureuse. Elle aime beacoup les calins.', address: 'Saint-Sebastien', price_per_day: 14, fur: 'soft', skill: 'cuddly', weight: 'light', size: 'dwarf', cleanliness: 3)
choco = Bunny.create!(name: 'Choco', description: 'Choco est un lapin qui aime plaire, il saura vous faire un charme.', address: 'Rezé', price_per_day: 16, fur: 'soft', skill: 'breeding', weight: 'heavy', size: 'large', cleanliness: 2)
coco = Bunny.create!(name: 'Coco', description: 'Coco a le caractère d\'un lapin et la taille d\'un chien, il vous permet d\'avoir un bon compromis.', address: 'Nantes', price_per_day: 12, fur: 'rough', skill: 'boxer', weight: 'enormous', size: 'giant', cleanliness: 5)
lulu = Bunny.create!(name: 'Lulu', description: 'Lulu n\'apprécie par la compagnie des autres animaux, elle passe l\'essentiel de son temps à dormir.', address: 'Saint-Herblain', price_per_day: 15, fur: 'soft', skill: 'boxer', weight: 'light', size: 'small', cleanliness: 4)
paris = Bunny.create!(name: 'Paris', description: 'Paris est un lapin voyageur, il vous accompagnera avec plaisir pendant vos vacances.', address: 'Saint-Sebastien', price_per_day: 16, fur: 'soft', skill: 'calming', weight: 'normal', size: 'medium', cleanliness: 3)
couscous = Bunny.create!(name: 'Couscous', description: 'Couscous aime manger et faire des câlins.', address: 'Nantes', price_per_day: 16 , fur: 'fluffy', skill: 'cuddly', weight: 'heavy', size: 'large', cleanliness: 4)

# owners

melanie = User.create!(email: 'melaniedupont@gmail.com', password: 'secret', first_name: 'Mélanie', last_name: 'Dupont')
caroline = User.create!(email: 'carolinelegall@gmail.com', password: 'secret', first_name: 'Caroline', last_name: 'Le Gall')
mathieu = User.create!(email: 'mathieurosfelder@gmail.com', password: 'secret', first_name: 'Mathieu', last_name: 'Rosfelder')
arthur = User.create!(email: 'arthurbarbier@gmail.com', password: 'secret', first_name: 'Arthur', last_name: 'Barbier')
brigitte = User.create!(email: 'brigittepoder@gmail.com', password: 'secret', first_name: 'Brigitte', last_name: 'Poder')


#renters

simon = User.create!(email: 'simonbouchet@gmail.com', password: 'secret', first_name: 'Simon', last_name: 'Bouchet')
sylvain = User.create!(email: 'sylvaindavid@gmail.com', password: 'secret', first_name: 'Sylvain', last_name: 'David')
margaux = User.create!(email: 'margauxguichaoua@gmail.com', password: 'secret', first_name: 'Margaux', last_name: 'Guichaoua')
nino = User.create!(email: 'ninoesnault@gmail.com', password: 'secret', first_name: 'Nino', last_name: 'Esnault')
zoe = User.create!(email: 'zoebillon@gmail.com', password: 'secret', first_name: 'Zoe', last_name: 'Billon')


# lien entre les bunnies et les owners

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

#bookings

booking1 = Booking.create!(total_price: 30, status: 'pending', start_date: DateTime.new(2020,4,3), end_date: DateTime.new(2020,4,5)) # location de 2 jours
booking2 = Booking.create!(total_price: 42, status: 'pending', start_date: DateTime.new(2020,3,20), end_date: DateTime.new(2020,3,23)) # location de 3 jours
booking3 = Booking.create!(total_price: 13, status: 'pending', start_date: DateTime.new(2020,3,15), end_date: DateTime.new(2020,3,16)) # location 1 jour
booking4 = Booking.create!(total_price: 24, status: 'pending', start_date: DateTime.new(2020,3,17), end_date: DateTime.new(2020,3,19)) # location de 2 jours
booking5 = Booking.create!(total_price: 160, status: 'pending', start_date: DateTime.new(2020,4,10), end_date: DateTime.new(2020,4,20)) # location de 10 jours

# lien entre les bunnies, les renters et les bookings

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

puts "Finished!"

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


