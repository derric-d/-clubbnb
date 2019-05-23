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
}
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
}
]

Review.create!(reviews_attributes)
puts 'Created reviews'

