puts "destruction des users"
User.destroy_all
puts "creation des users"
User.create!(
  email: "john.doe@example.com",
  password: '123456', # Spécifiez le mot de passe ici
  password_confirmation: '123456', # Spécifiez la confirmation du mot de passe ici
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
  running_pace: 6.5
)

User.create!(
  email: "jane.smith@example.com",
  password: '123456', # Spécifiez le mot de passe ici
  password_confirmation: '123456', # Spécifiez la confirmation du mot de passe ici
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
  running_pace: 7.0
)

User.create!(
  email: "sam.brown@example.com",
  password: '123456', # Spécifiez le mot de passe ici
  password_confirmation: '123456', # Spécifiez la confirmation du mot de passe ici
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
  running_pace: 8.0
)
puts "creation terminée"
