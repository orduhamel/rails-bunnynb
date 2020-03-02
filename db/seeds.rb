Booking.destroy_all
Bunny.destroy_all
User.destroy_all

owner = User.create!(email: 'owner@example.com', password: 'secret')
gouda = Bunny.new(name: 'Gouda', description: 'blabla', address: 'nantes', price_per_day: 20)
gouda.user = owner
gouda.save!

renter = User.create!(email: 'renter@example.com', password: 'secret')
booking = Booking.new(total_price: 20)
booking.user = renter
booking.bunny = gouda
booking.save!
p owner.booking_requests


