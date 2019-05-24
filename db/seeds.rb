Review.destroy_all
puts 'Destroyed all reviews'
Booking.destroy_all
puts 'Destroyed all bookings'
Flat.destroy_all
puts 'Destroyed all flats'
User.destroy_all
puts 'Destroyed all users'

user_attributes = [
{
  first_name: 'Stephan',
  last_name: 'Grund',
  email: 'stephan.grund@whu.edu',
  password: 'Stephan123',
},
{
  first_name: 'Philipp',
  last_name: 'Hansi',
  email: 'Philipp.hansi@gmail.com',
  password: 'Hallo123',
},
{
  first_name: 'Nina',
  last_name: 'Karas',
  email: 'nina.karas@nina.com',
  password: 'Nina123',
},
{
  first_name: 'Linn',
  last_name: 'Oberbeck',
  email: 'linn.oberbeck@linn.com',
  password: 'Linn123',
},
{
  first_name: 'Derric',
  last_name: 'Donehoo',
  email: 'derric.Donehoo@derric.com',
  password: 'Derric123',
},
{
  first_name: 'Fred',
  last_name: 'Thomas',
  email: 'fred.thomas@fred.com',
  password: 'Fred123',
}
]

User.create!(user_attributes)
puts 'Created users'

flats_attributes = [
{
  title: 'Fantastic flat in great area',
  city: 'Berlin',
  address: 'Sophienstrasse 5',
  description: 'Super cozy and warm appartments with 100 sq including two bedrooms',
  price_per_night: 50,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/148433/f402d00d_original.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},
{
  title: 'Tiny but sweet flat',
  city: 'London',
  address: 'Tower Bridge 5',
  description: 'Two bedrooms and a huge kitchen - perfect for food lovers',
  price_per_night: 80,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/67198954/bf349b76_original.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},
{
  title: 'Mansion on the Hollywood Hills',
  city: 'Los Angelos',
  address: 'Hollywood Hills 9862',
  description: 'Mansion for 20 people with view over entire LA',
  price_per_night: 800,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/94427231/228a2a20_original.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},
{
  title: 'Old but cute Parisian appartment',
  city: 'Paris',
  address: 'Rue Berenger 2322',
  description: 'Ideal place to Paris lovers with thousands of restaurants in the neighborhood',
  price_per_night: 30,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/fa5d28e8-90a7-455a-b5ab-168976907eed.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},
{
  title: 'French-Style Flat with Backyard',
  city: 'Copenhagen',
  address: 'Frederiksberg Straat 23432',
  description: 'Experience Cophenhagens streests and canals by foot - fantastic location for anybody',
  price_per_night: 120,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/34448792/80f1d5aa_original.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},
{
  title: 'Renovated Flat in Frederiksberg',
  city: 'Copenhagen',
  address: 'Frederiksberg Straat 23432',
  description: 'Experience Cophenhagens streests and canals by foot - fantastic location for anybody',
  price_per_night: 120,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/a73ba2f3-4776-46f2-9b38-4fee0962d0bb.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

{
  title: 'Villa San Gennariello B&B',
  city: 'Portici',
  address: 'Via Antonio de Curtis 80055',
  description: "Bed and breakfast in splendid Vesuviana's Villa of 1700. It was the Royal Bourbon Pheasantry, part of the Royal Palace of Portici.",
  price_per_night: 60,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/904359/182b801f_original.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

{
  title: 'Luxurious stone villa in Crete',
  city: 'Chania',
  address: 'Chania 731 35,',
  description: 'Very luxurious villa carved out of a big stone.',
  price_per_night: 75,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/135650b5-2541-4b48-878c-77044f6d399c.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

{
  title: 'The World Famous Seashell House',
  city: 'Isla Mujeres',
  address: 'Isla Mujeres 77400',
  description: 'Great location to stay at if you want to feel like a snail!',
  price_per_night: 220,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/6722906/b4bc6418_original.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

{
  title: 'Romantic flat with stunning views',
  city: 'Fornalutx',
  address: 'Carrer de sa Plaça 3',
  description: 'Perfect place for wannabe queens.',
  price_per_night: 135,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/28c1d7ed-268d-47cc-aa9c-436b3e9aa069.jpg?aki_policy=x_large',
  user_id: User.all.sample.id
},

{
  title: 'Ocean Beachfront Luxury Design Villa',
  city: 'Dencarik',
  address: 'Bali 81152',
  description: 'Very very very pretty and well designed Villa with all inclusive breakfast.',
  price_per_night: 150,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/d120b303-77c3-484b-91dc-cfc9959877ed.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

{
  title: 'Beautiful flat with pool',
  city: 'Marrakesch',
  address: 'Marrakesch 40160',
  description: 'Beautiful flat with a lot of flower petals on floor and furniture.',
  price_per_night: 80,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/11424118/e1fb3923_original.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

{
  title: 'Wooden hut with pool',
  city: 'Bali',
  address: 'Kabupaten Tabanan, Bali 82162',
  description: 'Feel connected with the earth in this pristine hut.',
  price_per_night: 80,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/7cc3c855-f90e-4d0f-9b13-3b5c2a3c4bad.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

{
  title: 'Apartment for hipsters',
  city: 'New York',
  address: '1468 Prospect Pl,',
  description: "If you think you're special, this is the place for you to stay at." ,
  price_per_night: 110,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/34212002/4a20ccc3_original.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

{
  title: 'Feel blue flat',
  city: 'London',
  address: '221b Baker street',
  description: "Everything is blue.",
  price_per_night: 30,
  remote_photo_url: 'https://a0.muscache.com/im/pictures/5a878555-6c05-4342-b1cd-b4a4cf86726d.jpg?aki_policy=xx_large',
  user_id: User.all.sample.id
},

]

Flat.create!(flats_attributes)
puts 'Created flats'

bookings_attributes = [
{
  move_out_date: 20190802,
  move_in_date: 20190302,
  status: 'requested by guest',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  move_out_date: 20190702,
  move_in_date: 20190402,
  status: 'confirmed by host',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  move_out_date: 20190802,
  move_in_date: 20190502,
  status: 'cancelled by guest',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  move_out_date: 20190602,
  move_in_date: 20190507,
  status: 'paid',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  move_out_date: 20190602,
  move_in_date: 20190507,
  status: 'cancelled by guest',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  move_out_date: 20190502,
  move_in_date: 20190407,
  status: 'denied by host',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  move_out_date: 20190808,
  move_in_date: 20190709,
  status: 'confirmed by host',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  move_out_date: 20191102,
  move_in_date: 20191007,
  status: 'denied by host',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  move_out_date: 20191202,
  move_in_date: 20191107,
  status: 'paid',
  user_id: User.all.sample.id,
  flat_id: Flat.all.sample.id
}
]

Booking.create!(bookings_attributes)
puts 'Created bookings'

reviews_attributes = [
{
  stars: 5,
  description: 'Fantastic stay at this awesome host',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 3,
  description: 'Was decent but not great',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 2,
  description: 'OKish',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 4,
  description: 'Fantastic but flat was dirty',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 4,
  description: 'Super duper',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 1,
  description: 'Super baaaad!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 2,
  description: 'Super loud street!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 5,
  description: 'Just fantastic!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 5,
  description: 'Thank you!!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 4,
  description: 'Very nice neighbours!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 4,
  description: 'The provided food was the best I have ever eaten!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 4,
  description: 'Very beautiful flat but the kitchen was quite dirty...',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 5,
  description: 'I will come back with my family a 100%!!!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 3,
  description: 'Nice place to live but a too expensive.',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 1,
  description: "The elictricity was not working for 10 days! And I didn't get back a single cent!",
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 5,
  description: 'My kids loved everything!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 1,
  description: 'Went there with my lover and it was shit.',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 1,
  description: 'The host just never showed up? We had to get into ANOTHER flat without getting a refund. I would give -100 stars!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 5,
  description: 'Lovely!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 5,
  description: 'Thumbs up from me and my dogs!',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 5,
  description: 'I wish I could live here all year around.',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 1,
  description: 'Hated the country, the neighborhood and all the people.',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 5,
  description: 'Everything was perfect! 100 stars from me:)',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
},
{
  stars: 3,
  description: 'Stay was okay, but could have been better.',
  booking_id: Booking.all.sample.id,
  flat_id: Flat.all.sample.id
}
]

Review.create!(reviews_attributes)
puts 'Created reviews'

