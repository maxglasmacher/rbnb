require "faker"

Booking.delete_all
Review.delete_all
Yacht.delete_all
User.delete_all

puts 'Creating 2 users...'

max = User.new(email: "max@gmail.com", password: "max12345")
hana = User.new(email: "hana@gmail.com", password: "hana12345")

puts 'Creating 10 fake yachts...'

puts "y1"
y1 = Yacht.new(name: "Azzam", description: "Azzam was built by luxury yacht
  builder Lürssen for an estimated build price of US$ 400 million.
  Her exterior design is done by Nauta Yachts. She is powered by two
  gas turbines and two diesel engines. She can reach a top speed of 30 knots.
  Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us! Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 100_000, address: "Hamburg")
y1.remote_photo_url = "https://qpr2l7.imagenii.com/static1.seenice.com/image_uploader/photos/63/large/nice-coastal-tour-boat-trip-exterior.jpg?f=q(v=.8)&auth=a979beac4836681aa9838c6ddd191b061eab10cb"
y1.user = max
y1.save!
puts "y2"
y2 = Yacht.new(name: "Eclipse", description: "The yacht Eclipse is owned by Russian billionaire Roman
  Abramovich. He is one of the richest people in the world.Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!
  Eclipse has two swimming pools and two helicopter pads.
  She has a crew of 70. Eclipse was delivered by Blohm and Voss in 2010.Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 150_000, address: "hamburg")
y2.remote_photo_url = "https://www.fraseryachts.com/uploads/image/Pages/BUY/Yachts%20for%20Sale/VICTORY.jpg"
y2.user = max
y2.save!
puts "y3"
y3 = Yacht.new(name: "Dubai", description: "Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!She is built by Lurssen for Russian
  billionaire Alisher Usmanov. She is a replacement for his ‘smaller’ 110 meter
  Dilbar (now Ona). Alisher Usmanov is one of Russia’s richest men with a net
  worth of US$ 13 billion.Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 230_000, address: "Dubai")
y3.remote_photo_url = "http://superyachts.agent4stars.com/wp-content/uploads/2018/03/MY-PHOENIX-II-90m-Charter-Yacht-by-Lu%CC%88rssen-Yachts-side-beautiful-yacht-mega-yacht.png"
y3.user = max
y3.save!
puts "y4"
y4 = Yacht.new(name: "Dilbar", description: "The yacht was originally
  commissioned at Lurssen Yachts by Prince Jefri of Brunei.
  The project was abandoned in 1998. In 2006 she was finished by Platinum
  Yachts, on behalf of the Dubai Government. The yacht has accommodations
  for 24 guests, and has a crew of 115.Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 270_000, address: "Alexandria")
y4.remote_photo_url = "https://i.ytimg.com/vi/V1DPE0K8h6k/maxresdefault.jpg"
y4.user = max
y4.save!
puts "y5"
y5 = Yacht.new(name: "Al Said", description: "Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!The yacht can accommodate 65
  guests and 140 crew members. Sultan Qaboos is one of the richest royals in
  the world. His net worth is estimated at more than US$ 1 billion.Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 270_000, address: "Lisbon")
y5.remote_photo_url = "http://www.yachts123.com/wp-content/uploads/2013/01/beautiful-yacht.jpg"
y5.user = max
y5.save!
puts "y6"
y6 = Yacht.new(name: "Fulk Al Salamah", description: "Tulk al Salamah means ‘Ship of Peace’.
  The assumption of her use as a support vessel is due to a lack of
  exterior space on board. Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!She is often seen together with Al Said. She accomodates up to
  60 people on board, has 4 pools and always beutiful women on board.Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 270_000, address: "Copenhagen")
y6.remote_photo_url = "https://cdn.denisonyachtsales.com/wp-content/uploads/2017/12/sail2-398-NGONI-32-Breedmedia20954_resize-1800x1012.jpg"
y6.user = hana
y6.save!
puts "y7"
y7 = Yacht.new(name: "Topaz", description: "Topaz was delivered by Lurssen in
  012. Not much is known about the yacht. Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!But she is frequently used by the Al
  ahyan family. In June 2014 Leonardo Do Caprio was spotted on board. During
  the football world cup in Rio de Janeiro. She is said to be the quickest yacht
  on the market at the moment, with max speed of 300km/h.Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 400_000, address: "Dubai")
y7.remote_photo_url = "http://www.thepaddockmagazine.com/wp-content/uploads/2016/08/1.jpg"
y7.user = hana
y7.save!
puts "y8"
y8 = Yacht.new(name: "Prince Abdul Aziz", description: "Most of the times she
  s based in Greece. Where many Arab royals berth their yachts. But when
  traveling she can often been found near Marbella Spain. Or in Antibes France,
  here the Saudi King owns summer palaces. Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!She has a Michelin cook on board at all times
  and is said to have an extraordinary ambiente.Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 440_000, address: "Dubai")
y8.remote_photo_url = "http://www.charterworld.com/news/wp-content/uploads/2012/12/Beutiful-POSH-Yacht-Tender.jpg"
y8.user = hana
y8.save!
puts "y9"
y9 = Yacht.new(name: "El Mahrousa", description: "El Mahrousa is the oldest
  active superyacht, and is cared for by the Egyptian navy. She rarely
  leaves her home bert. Not more than 3 times a year. Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!The movie (under) has
  some rare interior photos. The king bedroom is simply stunning with its big glass windows. Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 210_000, address: "Dubai")
y9.remote_photo_url = "https://www.charterworld.com/images/yachts-1/Beautiful%20dusk%20sunset%20with%20yacht%20aft%20deck,%20Mediterranean.jpg"
y9.user = hana
y9.save!
puts "y10"
y10 = Yacht.new(name: "Yas", description: "She is the 3rd yacht in this top 10.
  She is owned by the same Al Nahyan Family, just like Azzam and Topaz.
  Sheikh Hamdan is a half-brother of the current Emir and UAE president
  Khalifa bin Zayed Al Nahyan. Probably the most stunning part of her is the wide range of culinary experience,
  the wine cellar, and the on board zen garden for meditation. She also includes
  a free range gold course and a range for bow and arrow shooting. The helicopter
  is often used for paintball fights, which can be a good way to cool down from the
  constant heet of the sun. If you like jet skis and water slides she can provide
  you with some cool experiences as well, due to the hover jet skis equipped on
  the south and north side of the yacht. You will not regret travelling with us!She accommodates 25 people a helicopter and 5 jet skis
  for all sorts of outdoor fun.Moreover,
  the yacht provides the best captain in the world, captain america, he is such a cool
  dude and will save your ass at any time when the hunt you down for tax fraud, corruption,
  or sexual assault. Really, he is quite a nifty add on to your yacht and will steer
  your ship through any sort of weather. The onboard pet, a young born king kong
  is also another wonderful attraction of your yacht and will most definitely please you
  at all times. He is so fluffy! This yacht will meet all your extravagant tastes
  and desires, we can guarantee.",
  price_per_day: 150_000, address: "Dubai")
y10.remote_photo_url = "https://i.pinimg.com/originals/6a/2c/65/6a2c65d5d4b3a1e985bfbdf225becf55.jpg"
y10.user = hana
y10.save!
puts 'Finished!'
