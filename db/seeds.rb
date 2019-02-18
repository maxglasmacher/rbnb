require "faker"

Booking.delete_all
User.delete_all
Yacht.delete_all

puts 'Creating 10 fake yachts/users...'
10.times do
  url_user = "https://source.unsplash.com/collection/2219444/480x480"
  url_yacht = "https://source.unsplash.com/collection/4284591/480x480"
  user = User.new(
    email: Faker::Internet.email,
    encrypted_password: Faker::String.random(7..12)
  )
  user.remote_photo_url = url_user
  user.save!
  yacht = User.new(
    name: Faker::Name.name,
    description: Faker::GreekPhilosophers.quote,
    price_per_day: rand(1_000..10_000)
  )
  yacht.remote_photo_url = url_yacht
  yacht.user = user
  yacht.save!
end
puts 'Finished!'
