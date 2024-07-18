
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

User.create!(
  email: "john.doe@example.com",
  password: '123456',
  last_name: "Doe",
  first_name: "John",
  address: "43 Avenue thiers, Melun, France",
  picture: "https://example.com/johndoe.jpg",
  description: "Experienced runner looking for training partners.",
  phone_number: "123-456-7890",
  running_pace: 6.5,
  next_official_running_event: "City Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "5 years",
  run_frequency: 4,
  other_sport: "Cycling",
  preference_date: "Monday, Sathurday",
  preference_hour: 6
)

User.create!(
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
  address: "456 Avenue des graines, Cesson, France",
  picture: "https://example.com/janesmith.jpg",
  description: "Marathon runner looking to improve my pace.",
  phone_number: "987-654-3210",
  running_pace: 7.0,
  next_official_running_event: "Half Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "3 years",
  run_frequency: 5,
  other_sport: "Swimming",
  preference_date: "Saturday, Sunday",
  preference_hour: 6
)

User.create!(
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
  address: "789 Avenue des palmiers, Fontainebleau, France",
  picture: "https://example.com/sambrown.jpg",
  description: "New to running, looking for a group to join.",
  phone_number: "555-123-4567",
  running_pace: 8.0,
  next_official_running_event: "5K Fun Run",
  preparation: "Yes",
  how_long_have_you_been_running: "6 months",
  run_frequency: 3,
  other_sport: "Yoga",
  preference_date: "Monday, Friday",
  preference_hour: 6
)

User.create!(
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
  address: "34 Boulevard Saint-Germain, Melun, France",
  picture: "https://example.com/alainstravami.jpg",
  description: "Passionate runner aiming to compete in marathons.",
  phone_number: "+33 1 23 45 67 89",
  running_pace: 5.5,
  next_official_running_event: "Paris Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "8 years",
  run_frequency: 6,
  other_sport: "Tennis, Football",
  preference_date: "Friday, Wednesday",
  preference_hour: 6
)

User.create!(
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
  address: "22 Rue de Rivoli, Melun, France",
  picture: "https://example.com/ameliebouchard.jpg",
  description: "Trail runner seeking new challenges.",
  phone_number: "+33 1 23 45 67 89",
  running_pace: 5.4,
  next_official_running_event: "Paris Half Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "6 years",
  run_frequency: 5,
  other_sport: "Climbing",
  preference_date: "Monday, Friday",
  preference_hour: 6
)

User.create!(
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
  address: "33 Rue de la République, Le mée sur seine, France",
  picture: "https://example.com/antoinemartin.jpg",
  description: "Sprinter looking to improve speed.",
  phone_number: "+33 4 78 42 12 34",
  running_pace: 5.6,
  next_official_running_event: "Lyon Sprint Meet",
  preparation: "Yes",
  how_long_have_you_been_running: "4 years",
  run_frequency: 4,
  other_sport: "Basketball",
  preference_date: "Monday, Saturday",
  preference_hour: 8
)

User.create!(
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
  address: "12 Rue Sainte-Catherine, Boissise, France",
  picture: "https://example.com/luciedubois.jpg",
  description: "Fitness enthusiast new to running.",
  phone_number: "+33 5 56 01 23 45",
  running_pace: 5.7,
  next_official_running_event: "Bordeaux 10K",
  preparation: "Yes",
  how_long_have_you_been_running: "1 year",
  run_frequency: 3,
  other_sport: "Pilates",
  preference_date: "Saturday, Sunday",
  preference_hour: 6,
  relationship_number: 1,
  meeting_number: 1
)

User.create!(
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
  address: "45 Rue Paradis, Livry, France",
  picture: "https://example.com/killianleblanc.jpg",
  description: "Casual runner aiming to complete a marathon.",
  phone_number: "+33 4 91 23 45 67",
  running_pace: 5.8,
  next_official_running_event: "Marseille Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "3 years",
  run_frequency: 4,
  other_sport: "Soccer",
  preference_date: "Wednesday, Sunday ",
  preference_hour: 6,
  relationship_number: 2,
  meeting_number: 2
)

User.create!(
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
  address: "78 Avenue de la Liberté, Lyon, France",
  picture: "https://example.com/henrymoreau.jpg",
  description: "Competitive runner with a focus on half marathons.",
  phone_number: "+33 4 78 34 56 78",
  running_pace: 5.9,
  next_official_running_event: "Lyon Half Marathon",
  preparation: "Yes",
  how_long_have_you_been_running: "5 years",
  run_frequency: 5,
  other_sport: "Swimming",
  preference_date: "Monday, Friday",
  preference_hour: 6,
  relationship_number: 1,
  meeting_number: 1
)

User.create!(
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
  address: "56 Rue de la Victoire, Marseille, France",
  picture: "https://example.com/clairerohand.jpg",
  description: "New runner excited to join local races.",
  phone_number: "+33 4 91 56 78 90",
  running_pace: 6.0,
  next_official_running_event: "Marseille 5K",
  preparation: "Beginner running programs.",
  how_long_have_you_been_running: "6 months",
  run_frequency: 3,
  other_sport: "Yoga",
  preference_date: "Monday, Wednesday",
  preference_hour: 6,
  relationship_number: 1,
  meeting_number: 1

)

User.create!(
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
  address: "67 Rue Sainte, Bordeaux, France",
  picture: "https://example.com/pierreperrin.jpg",
  description: "Experienced marathon runner.",
  phone_number: "+33 5 56 78 90 12",
  running_pace: 6.1,
  next_official_running_event: "Bordeaux Marathon",
  preparation: "Marathon-specific training plans.",
  how_long_have_you_been_running: "10 years",
  run_frequency: 6,
  other_sport: "Cycling",
  preference_date: "Monday, Wednesday",
  preference_hour: 6,
  relationship_number: 2,
  meeting_number: 2
)
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
