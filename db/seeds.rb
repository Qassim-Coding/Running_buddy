require "open-uri"

puts "Destroying all messages..."
Message.destroy_all

puts "Destroying all user_meetings"
UsersMeeting.destroy_all

puts "Destroying all meetings..."
Meeting.destroy_all

puts "Destroying all relationships..."
Relationship.destroy_all

puts "Destroying all users..."
User.delete_all

puts "creating users"

user1 = User.create!(
  email: "john.doe@example.com",
  password: '123456',
  last_name: "Doe",
  first_name: "John",
  address: "10 rue guy baudoin, Melun, France",
  picture: "app/assets/images/John_Legend_profil.png",
  description: "Experienced runner looking for training partners.",
  phone_number: "123-456-7890",
  running_pace: 410,
  next_official_running_event: "City Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "5 years",
  run_frequency: 4,
  other_sport: "Cycling",
  preference_date: "Monday, Saturday",
  preference_hour: 6,
  relationship_number: 1,
  meeting_number: 2,
  latitude: 48.5387219,
  longitude: 2.6605287
)
file = File.open(user1.picture)
user1.avatar.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save

user2 = User.create!(
  email: "jane.smith@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Smith",
  first_name: "Jane",
  address: "43b avenue thiers, Melun, France",
  picture: "app/assets/images/janesmith.jpg",
  description: "Marathon runner looking to improve my pace.",
  phone_number: "987-654-3210",
  running_pace: 420,
  next_official_running_event: "Half Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "3 years",
  run_frequency: 5,
  other_sport: "Swimming",
  preference_date: "Saturday, Sunday",
  preference_hour: 6,
  relationship_number: 2,
  meeting_number: 1,
  latitude: 48.529797,
  longitude: 2.654954
)
file = File.open(user2.picture)
user2.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user2.save

user3 = User.create!(
  email: "sam.brown@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Brown",
  first_name: "Sam",
  address: "113 avenue des charmettes, Le-mée-sur-seine, France",
  picture: "app/assets/images/sambrown.jpg",
  description: "New to running, looking for a group to join.",
  phone_number: "555-123-4567",
  running_pace: 480,
  next_official_running_event: "5K Fun Run",
  preparation: "Yes",
  how_long_have_you_been_running: "6 months",
  run_frequency: 3,
  other_sport: "Yoga",
  preference_date: "Monday, Friday",
  preference_hour: 6,
  relationship_number: 5,
  meeting_number: 4,
  latitude: 48.540578,
  longitude: 2.644153
)
file = File.open(user3.picture)
user3.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user3.save

user4 = User.create!(
  email: "alain.stravami@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Stravami",
  first_name: "Alain",
  address: "16 rue de moissy, Combs-la-ville, France",
  picture: "app/assets/images/alainstravami.jpg",
  description: "Passionate runner aiming to compete in marathons.",
  phone_number: "+33 1 23 45 67 89",
  running_pace: 410,
  next_official_running_event: "Paris Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "8 years",
  run_frequency: 6,
  other_sport: "Tennis, Football",
  preference_date: "Friday, Wednesday",
  preference_hour: 6,
  relationship_number: 2,
  meeting_number: 3,
  latitude: 48.6618728,
  longitude: 2.5695888
)
file = File.open(user4.picture)
user4.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user4.save

user5 = User.create!(
  email: "amelie.bouchard@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Bouchard",
  first_name: "Amelie",
  address: "44 rue du Dr pouillot, Melun, France",
  picture: "app/assets/images/ameliebouchard.jpg",
  description: "Trail runner seeking new challenges.",
  phone_number: "+33 1 23 45 67 89",
  running_pace: 504,
  next_official_running_event: "Paris Half Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "6 years",
  run_frequency: 5,
  other_sport: "Climbing",
  preference_date: "Monday, Friday",
  preference_hour: 6,
  relationship_number: 15,
  meeting_number: 2,
  latitude: 48.531863,
  longitude: 2.649412
)
file = File.open(user5.picture)
user5.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user5.save

user6 = User.create!(
  email: "antoine.martin@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Martin",
  first_name: "Antoine",
  address: "9 route de nangis, Melun, France",
  picture: "app/assets/images/antoinemartin.jpg",
  description: "Sprinter looking to improve speed.",
  phone_number: "+33 4 78 42 12 34",
  running_pace: 480,
  next_official_running_event: "Lyon Sprint Meet",
  preparation: "Yes",
  how_long_have_you_been_running: "4 years",
  run_frequency: 4,
  other_sport: "Basketball",
  preference_date: "Monday, Saturday",
  preference_hour: 8,
  relationship_number: 14,
  meeting_number: 10,
  latitude: 48.5412579,
  longitude: 2.6749157
)
file = File.open(user6.picture)
user6.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user6.save

user7 = User.create!(
  email: "lucie.dubois@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Dubois",
  first_name: "Lucie",
  address: "142 Rue du Bois Moissy, Vaux-le-Pénil, France",
  picture: "app/assets/images/luciedubois.jpg",
  description: "Fitness enthusiast new to running.",
  phone_number: "+33 5 56 01 23 45",
  running_pace: 520,
  next_official_running_event: "Bordeaux 10K",
  preparation: "Yes",
  how_long_have_you_been_running: "1 year",
  run_frequency: 3,
  other_sport: "Pilates",
  preference_date: "Saturday, Sunday",
  preference_hour: 6,
  relationship_number: 11,
  meeting_number: 21,
  latitude: 48.520947,
  longitude: 2.677683
)
file = File.open(user7.picture)
user7.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user7.save

user8 = User.create!(
  email: "killian.leblanc@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Leblanc",
  first_name: "Killian",
  address: "3 rue Claude Bernard, Melun, France",
  picture: "app/assets/images/killianleblanc.jpg",
  description: "Casual runner aiming to complete a marathon.",
  phone_number: "+33 4 91 23 45 67",
  running_pace: 530,
  next_official_running_event: "Marseille Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "3 years",
  run_frequency: 4,
  other_sport: "Soccer",
  preference_date: "Wednesday, Sunday ",
  preference_hour: 6,
  relationship_number: 2,
  meeting_number: 2,
  latitude: 48.543046627191,
  longitude: 2.676467611037
)
file = File.open(user8.picture)
user8.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user8.save

user9 = User.create!(
  email: "henry.moreau@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Moreau",
  first_name: "Henry",
  address: "824 Av. du Lys,Dammarie-les-Lys, France",
  picture: "app/assets/images/henrymoreau.jpg",
  description: "Competitive runner with a focus on half marathons.",
  phone_number: "+33 4 78 34 56 78",
  running_pace: 620,
  next_official_running_event: "Lyon Half Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "5 years",
  run_frequency: 5,
  other_sport: "Swimming",
  preference_date: "Monday, Friday",
  preference_hour: 6,
  relationship_number: 10,
  meeting_number: 150,
  latitude: 48.516182000058,
  longitude: 2.626078008966
)
file = File.open(user9.picture)
user9.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user9.save

user10 = User.create!(
  email: "claire.rohand@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Rohand",
  first_name: "Claire",
  address: "3 All. du Mûrier, La Rochette, France",
  picture: "app/assets/images/clairerohand.jpg",
  description: "New runner excited to join local races.",
  phone_number: "+33 4 91 56 78 90",
  running_pace: 590,
  next_official_running_event: "Marseille 5K",
  preparation: "Beginner running programs.",
  how_long_have_you_been_running: "6 months",
  run_frequency: 3,
  other_sport: "Yoga",
  preference_date: "Monday, Wednesday",
  preference_hour: 6,
  relationship_number: 14,
  meeting_number: 10,
  latitude: 48.509906008146,
  longitude: 2.666121964653
)
file = File.open(user10.picture)
user10.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user10.save

user11 = User.create!(
  email: "pierre.perrin@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Perrin",
  first_name: "Pierre",
  address: "50 Quai Maréchal Joffre, Melun, France",
  picture: "app/assets/images/pierreperrin.jpg",
  description: "Experienced marathon runner.",
  phone_number: "+33 5 56 78 90 12",
  running_pace: 390,
  next_official_running_event: "Bordeaux Marathon",
  preparation: "Marathon-specific training plans.",
  how_long_have_you_been_running: "10 years",
  run_frequency: 6,
  other_sport: "Cycling",
  preference_date: "Monday, Wednesday",
  preference_hour: 6,
  relationship_number: 2,
  meeting_number: 2,
  latitude: 48.532445993522,
  longitude: 2.664300996188
)
file = File.open(user11.picture)
user11.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user11.save

user12 = User.create!(
  email: "roxanne.petit@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Petit",
  first_name: "Roxanne",
  address: "45 avenue Thiers, Melun, France",
  picture: "app/assets/images/2roxannepetit.jpg",
  description: "Experienced runner.",
  phone_number: "+33 5 56 78 56 12",
  running_pace: 380,
  next_official_running_event: "Deauville Marathon",
  preparation: "Marathon-specific training plans.",
  how_long_have_you_been_running: "3 years",
  run_frequency: 7,
  other_sport: "Cycling",
  preference_date: "Monday, Thursday",
  preference_hour: 5,
  relationship_number: 8,
  meeting_number: 3,
  latitude: 48.529626991846,
  longitude: 2.654874037325
)
file = File.open(user12.picture)
user12.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user12.save

pictures12 = [
  'https://dgtzuqphqg23d.cloudfront.net/uCJw2yiUZDGzpyHSjHq4sqRJKSuXtCY55Nbr4ibEa4g-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/XoNievkKs0OpteH4ng0P5_6vwGx3tFMPZl245zpVyUM-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/HxJE5uDFwqtmGejRUE9aq7Zjl8bfehWsb259idXJmF4-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/IV6Di3mi7z2Dku6dE-qEdPUPIhclMW6JjQyWYlV3-Fk-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/KZcorMSK9pWg3-8OVEq52O1JXxydEPxm5JaL0w1obfY-1536x2048.jpg'
]

pictures12.each do |picture|
  file = URI.open(picture)
  user12.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user12.save
end

user13 = User.create!(
  email: "manuel.loutoby@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Loutoby",
  first_name: "Manuel",
  address: "57 avenue Thiers, Melun, France",
  picture: "app/assets/images/2manuelloutoby.jpg",
  description: "Passionate runner.",
  phone_number: "+33 7 56 78 56 12",
  running_pace: 378,
  next_official_running_event: "Deauville Marathon",
  preparation: "Marathon-specific training plans.",
  how_long_have_you_been_running: "2 years",
  run_frequency: 10,
  other_sport: "Boxing",
  preference_date: "Monday, Thursday",
  preference_hour: 9,
  relationship_number: 4,
  meeting_number: 3,
  latitude: 48.529177062498,
  longitude: 2.654663652684
)
file = File.open(user13.picture)
user13.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user13.save

pictures13 = [
  'https://dgtzuqphqg23d.cloudfront.net/J4an4cYTt_pGqgfBJxneJkUJ0rQpQmOw2WUDqc8UVuM-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/O4D6S2JS2qSlrRLyTC5IOH27ttmpGqtTfa6AuEs0Rug-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/E0u93A_-ENgPKLEB7gVwa-38HF-eR4iSsRPl_13FuGQ-2048x1367.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/mSORkHtx108fjbrmBeOpnsr3RRA9MfyUpc5TECXt14c-2048x1365.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/sDEWuBwJ9iGUX6b5R8-JydmHZ39vHoWUWivRKufzEhk-1365x2048.jpg'
]

pictures13.each do |picture|
  file = URI.open(picture)
  user13.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user13.save
end

puts "end of creating users"
Meeting.create!(
  date: Date.new(2021, 6, 1),
  location: "Central Park",
  weather_report: "Sunny",
  user: User.first
)

Relationship.create!(
  status: true,
  asker: User.first,
  receiver: User.second
)

Message.create!(
  content: "Hi, I'm interested in joining your running group.",
  user: User.third,
  relationship: Relationship.first
)

puts "Seeding complete!"
