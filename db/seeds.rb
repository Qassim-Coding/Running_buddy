puts "Destroying all relationships..."
Relationship.destroy_all

puts "Destroying all meetings..."
Meeting.destroy_all

puts "Destroying all users..."
User.destroy_all

puts "creating users"
User.delete_all

User.create!(
  email: "john.doe@example.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Doe",
  first_name: "John",
  address: "123 Main Street, Anytown, USA",
  picture: "https://example.com/johndoe.jpg",
  description: "Experienced runner looking for training partners.",
  phone_number: "123-456-7890",
  running_pace: 6.5,
  next_official_running_event: "City Marathon",
  preparation: "Currently following a strict training schedule.",
  how_long_have_you_been_running: "5 years",
  run_frequency: 4,
  other_sport: "Cycling"
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
  address: "456 Oak Street, Othertown, USA",
  picture: "https://example.com/janesmith.jpg",
  description: "Marathon runner looking to improve my pace.",
  phone_number: "987-654-3210",
  running_pace: 7.0,
  next_official_running_event: "Half Marathon",
  preparation: "Training with a coach.",
  how_long_have_you_been_running: "3 years",
  run_frequency: 5,
  other_sport: "Swimming"
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
  address: "789 Pine Street, Elsewhere, USA",
  picture: "https://example.com/sambrown.jpg",
  description: "New to running, looking for a group to join.",
  phone_number: "555-123-4567",
  running_pace: 8.0,
  next_official_running_event: "5K Fun Run",
  preparation: "Starting with basic running plans.",
  how_long_have_you_been_running: "6 months",
  run_frequency: 3,
  other_sport: "Yoga"
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
  address: "34 Boulevard Saint-Germain, Paris, France",
  picture: "https://example.com/alainstravami.jpg",
  description: "Passionate runner aiming to compete in marathons.",
  phone_number: "+33 1 23 45 67 89",
  running_pace: 5.5,
  next_official_running_event: "Paris Marathon",
  preparation: "Following a marathon training plan.",
  how_long_have_you_been_running: "8 years",
  run_frequency: 6,
  other_sport: "Tennis, Football"
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
