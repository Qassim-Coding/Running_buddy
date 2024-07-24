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
  email: "valentin.letanneur@gmail.com",
  password: '123456',
  last_name: "Le Tanneur",
  first_name: "Valentin",
  address: "10 rue guy baudoin, Melun",
  picture: "app/assets/images/valentinletanneur.jpg",
  description: "Experienced runner looking for training partners.",
  phone_number: "+33 1 23 46 67 89",
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
user1.avatar.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user1.save

pictures1 = [
  'https://dgtzuqphqg23d.cloudfront.net/g3XnENBbY4wieo7HmT-YuJW0Za0-a5lyGS__hgcpCsw-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/YJG2OiujKu9RZWlgY6PvOpJQ2cg3hsVh_CWu2E_fJCk-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/6aNHbMNn45n-fTnJDwdkEMrZ8Ufnm_HjmAoPXlIoxmY-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/7BFtVmPcvSNrgMYIrBg0JWqXP0blvhdP3uT22NZqDYo-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/qtxnhHKVKjFfaTRFqjRmDk87GhV_5JsJFLV-n7WoAjA-1536x2048.jpg'
]

pictures1.each do |picture|
  file = URI.open(picture)
  user1.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user1.save
end

user2 = User.create!(
  email: "alexandra.durand@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Durand",
  first_name: "Alexandra",
  address: "43b avenue thiers, Melun",
  picture: "app/assets/images/alexandradurand.jpg",
  description: "Marathon runner looking to improve my pace.",
  phone_number: "+33 1 23 45 55 89",
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

pictures2 = [
  'https://dgtzuqphqg23d.cloudfront.net/qPyVeSnn12VmPBakPYYMtST--o2ufRzWQsfV7Ho7vXo-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/IYCwjkEXJcmJKpdNwmNAZorSxHojnkVfbjWrAaPtm38-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/diSlP1iSIs0PwKegPvgx0CT5GsordwkHeu9UpgBKch0-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/dK6tbj5rcTejSVRY5HtFhVDEXXI7qLuRuj0QMd-Q5MU-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/f2oiwdbB1c4K4d20XbHgC3TM3NzsKKFOyDtj-QSZ2Fk-1536x2048.jpg'
]

pictures2.each do |picture|
  file = URI.open(picture)
  user2.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user2.save
end

user3 = User.create!(
  email: "corentin.ducros@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Ducros",
  first_name: "Corentin",
  address: "113 avenue des charmettes, Le-mée-sur-seine",
  picture: "app/assets/images/corentinducros.png",
  description: "New to running, looking for a group to join.",
  phone_number: "+33 7 22 45 55 89",
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
user3.avatar.attach(io: file, filename: "nes.png", content_type: "image/png")
user3.save

pictures3 = [
  'https://dgtzuqphqg23d.cloudfront.net/7OQdd3Y3JUZdssZC8jyCfwgGlxN3YEJfPSGUrom-YXE-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/5B56X8ZjXmzAq40wvQSEt4koLKzwlcO3iVSwMgDDhIc-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/UeOs6_5oPbNGom4WBiRv7dH52llTOpiUhVZulCBt3dI-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/xLvpA_ZvWfmW5jXYm0TQHYcQjYwF1baBga3nWU-2zcQ-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/c9JuRdec9jBGXc0fp-VJNWlJANQe38XJNMM7iTq-pjQ-2048x1536.jpg'
]

pictures3.each do |picture|
  file = URI.open(picture)
  user3.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user3.save
end

user4 = User.create!(
  email: "fred.sousa@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Sousa",
  first_name: "Fred",
  address: "16 rue de moissy, Combs-la-ville",
  picture: "app/assets/images/fredsousa.jpg",
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

pictures4 = [
  'https://dgtzuqphqg23d.cloudfront.net/q9a1nQVctRrllToeW65UhcmV4Zx5ZiVont2CGAIo1fU-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/hi2SwvzRpSD5Sqkvc38sgCGZEC9JCsReB_r6ozRlIkU-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/GLgi5_MpI_vPHESN_uKKxNFmdqMxLJ9z0u_mKnbRpiI-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/EMAhredzguL_7A_BcGV16o5-TlLwBqjamRXqos3vFAc-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/BmdGyKYWQcaNK_0ic0ZhNFPsV3-f3iHziZLY2EqLXKs-1536x2048.jpg'
]

pictures4.each do |picture|
  file = URI.open(picture)
  user4.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user4.save
end

user5 = User.create!(
  email: "jeanne.julia@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Julia",
  first_name: "Jeanne",
  address: "44 rue du Dr pouillot, Melun",
  picture: "app/assets/images/jeannejulia.jpg",
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

pictures5 = [
  'https://dgtzuqphqg23d.cloudfront.net/uWaOSo3TxDNihrUWQmzBgjy_UgKDOwGUgIVLGSzODuc-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/o4AkGMX3bZR4Z5vJwIojd1Xz0Q2RB0RbZMics3w6zv4-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/y4FzweG0n_c7V1ovXuf3fGcwlJ_7_L9kGceoK74jzdU-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/wKPC2xT0Xuk6aEkUv0QBJaFi_Xo0qLDpSW0EzRgu2z4-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/0w0yJIhKkDp8nrx0lEx4cmgICBiFbVAC2-tF2fYtJZ0-1536x2048.jpg'
]

pictures5.each do |picture|
  file = URI.open(picture)
  user5.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user5.save
end

user6 = User.create!(
  email: "antoine.martin@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Martin",
  first_name: "Antoine",
  address: "9 route de nangis, Melun",
  picture: "app/assets/images/2antoinemartin.jpg",
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

pictures6 = [
  'https://dgtzuqphqg23d.cloudfront.net/xCCzB9EQwQvzu0DR6Jt4TanZMqL8_z75_GUdttgHOd4-945x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/UuD5eDbIM69_sE5Ut5lAAmNjMTeliYtTdta5j0Psupg-1152x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/mnEfz7oDviV0OVtDA2AEaCWET-lLQ_C0bJfvOQVmpFM-1152x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/1PSyD2LGhQr0FGTudOrhG7zH9lWD7DKBICPvQ7V-SVs-1152x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/FY71GekohardSIASygLCGwXHyihkg7OzreX2V3ZIh1A-1152x2048.jpg'
]

pictures6.each do |picture|
  file = URI.open(picture)
  user6.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user6.save
end

user7 = User.create!(
  email: "lucie.dubois@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Dubois",
  first_name: "Lucie",
  address: "142 Rue du Bois Moissy, Vaux-le-Pénil",
  picture: "app/assets/images/2luciedubois.jpg",
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

pictures7 = [
  'https://dgtzuqphqg23d.cloudfront.net/SMghMblHuMPIXwDhEAzcyl_2IBRbw9EHzQz85fUay7I-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/BcSmR-u92BXQ07wAh4KiZzTr_PcXSZiwKNgLcWLXyLY-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/i81u-oMUVm8k4_4_aVuLGir8EKNIszZrQ5_U_NioBg4-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/SMghMblHuMPIXwDhEAzcyl_2IBRbw9EHzQz85fUay7I-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/Bt7wc4xocqlGh-bXx7-_QO6CZcqOzCn58OFgZTgcxzI-1536x2048.jpg'
]

pictures7.each do |picture|
  file = URI.open(picture)
  user7.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user7.save
end

user8 = User.create!(
  email: "killian.leblanc@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Leblanc",
  first_name: "Killian",
  address: "3 rue Claude Bernard, Melun",
  picture: "app/assets/images/2killianlebalnc.jpg",
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

pictures8 = [
  'https://dgtzuqphqg23d.cloudfront.net/boUn-9xs0-wwg8zD-BuIKnvPC8TMJjezP0yOFf04dGk-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/srqaVyZh_vbGfPSYmKlxoQ-hpZuoSzzVZsDpFlxD55U-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/QnjYYIFGOjXQ3WDnNqy9RvpEAkg3qGz4uRSNmeSjoqA-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/uAIdiPcRuB6UxFtUZJcm4_ozDQYuxflIjzL5vSAfHok-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/oq0P3DeLztERT4ZDHBWgGH3q7Vi9mYKEDbHphATkZ_A-1536x2048.jpg'
]

pictures8.each do |picture|
  file = URI.open(picture)
  user8.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user8.save
end

user9 = User.create!(
  email: "henry.moreau@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Moreau",
  first_name: "Henry",
  address: "824 Av. du Lys,Dammarie-les-Lys",
  picture: "app/assets/images/2hernymoreau.JPG",
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

pictures9 = [
  'https://cvws.icloud-content.com/S/AaXjVPTkG2uU7Ahu4hkpnubLqoW9/20240616+triathlon+cannes-ecluse+0945+%C2%A9Alexis+Komenda.JPG?o=AoUUoHaMbYu4Q0_4nkEa895wY-MCkTPsil7BEpkJhI68&v=1&z=https%3A%2F%2Fp47-content.icloud.com%3A443&x=1&a=CAogvNmayyiVFI0aFM1MTBkLkgvfNXO9B8O3pa9kMQZZMu8SZxDC8_-gjjIYwoqTpo4yIgEAUgTLqoW9aiY7h6NBCPABQnbgQIgYjR41Em5cmehAXK4JF6IdNWtUgMmMJ_OzGnIm5AM5-bPwdcRJ9aAD0noHJftcLyYy06v7TXFf9z1-aV_xcdanDks&e=1721825019&r=9b973060-4fcb-4cef-b35a-b5cbcd9e577d-6&s=vPdW81dIArgKj2b5i_r6RnjLd7I',
  'https://cvws.icloud-content.com/S/AUJU4MmuNI4Pa_6ciKi--hhqkd74/20240616+triathlon+cannes-ecluse+0942+%C2%A9Alexis+Komenda.JPG?o=AkozVq5SHLqjKXjz0fEUaQvJywe7S6kf9RDZ0M7EaU_S&v=1&z=https%3A%2F%2Fp47-content.icloud.com%3A443&x=1&a=CAog1SauUMPgNvbwtT9xL-uG_YuOHV1LAgBLnL-V3XmE1lgSZxDs7P-gjjIY7IOTpo4yIgEAUgRqkd74aiYPV3LL97wvi1Usro1BBlUdParvfBTwMoUL8ElQnJ-CLNkIYPEWd3ImSCq_di4zqUDZ5Ra1Aj8H_FJGLm0LDY7IagXlaLNCaVr8X8CsGVg&e=1721825018&r=24a3ef22-d69e-402e-bf21-516e94d055e7-5&s=NV1Ktni948kAm5rKywaiMftTUzg',
  'https://dgtzuqphqg23d.cloudfront.net/ETdJt-2R_bwqrakvECdullthOGUCdtVAHw9kFtkwo7s-1152x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/fO1BPkFPgHU4JCeWAtgl63ZiI-ldSrY7tYmd6cW5huU-1536x2048.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/5lEK5RQOge-mqj3vad4JSpGYqVqfLqGCyKlYDrRyALU-1536x2048.jpg'
]

pictures9.each do |picture|
  file = URI.open(picture)
  user9.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user9.save
end

user10 = User.create!(
  email: "claire.rohand@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Rohand",
  first_name: "Claire",
  address: "3 All. du Mûrier, La Rochette",
  picture: "app/assets/images/2clairerohand.JPG",
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

pictures10 = [
  'https://cvws.icloud-content.com/S/AdDyka1U_Kt1yONwOCsWvWUJ0JpV/20240616+triathlon+cannes-ecluse+0950+%C2%A9Alexis+Komenda.JPG?o=AlP99UCGjauqUYrrDXRQY3O2TM8AhJuS-LsSh16EoJ1g&v=1&z=https%3A%2F%2Fp47-content.icloud.com%3A443&x=1&a=CAogwxyl0wphMHbf5zwRBTvu2QXExGaQC1N_c0gKExbBobQSZxDD8_-gjjIYw4qTpo4yIgEAUgQJ0JpVaiaIra5gpn8-w2dqh5N5PjGRlAhkkhEYvYVgMuj2SYqDxvC1WtBgh3ImMb5yi7l7docTFvO1dreDgG1xmiH2O04QyKvAGgCFrxgvWbY5-gI&e=1721825019&r=9b973060-4fcb-4cef-b35a-b5cbcd9e577d-11&s=Z_7L446UMsFfHid5Wu65NyT0J7Y',
  'https://cvws.icloud-content.com/S/Ad7vlt7X_bJX_hR9oEdhV3u__tAJ/20240616+triathlon+cannes-ecluse+0958+%C2%A9Alexis+Komenda.JPG?o=AiR-rbv-wG-cCA5tsEwaC6YneEBaxdt6GiiSNT2zuX-8&v=1&z=https%3A%2F%2Fp47-content.icloud.com%3A443&x=1&a=CAogkifdSCbSrXRQUF2ha2_h398G7qtyErNTbG5u3qVhyZYSZxD_9IChjjIY_4uUpo4yIgEAUgS__tAJaiYLJFV538KzzNhaLQwyZxxUWv5C1Dulmf0BR03X-RyYejPFiUQs13ImXwNwEkYkO2l-BsXbAxNzFEd-ebhMhoe2BwLRZGVvHGZeqa0fEM4&e=1721825035&r=2854c5c7-2aab-4134-aec4-1941e6607b23-3&s=7GCzooXvEGM76Z33YAGZFAJtbzA',
  'https://dgtzuqphqg23d.cloudfront.net/WbrXEMGUNYeALkKdQc7mEN0-QKu4uwZgeICtCjg9n-s-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/jMGJMupNLK86SD7QYdaXhcyL4X0IjRauHC596uvR3eA-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/LXuhjiPCtiyasKPifrLtNN_588lwvGEKg91LI_yvxOY-2048x1536.jpg'
]

pictures10.each do |picture|
  file = URI.open(picture)
  user10.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user10.save
end

user11 = User.create!(
  email: "pierre.perrin@gmail.com",
  password: '123456',
  password_confirmation: '123456',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil,
  created_at: Time.now,
  updated_at: Time.now,
  last_name: "Perrin",
  first_name: "Pierre",
  address: "50 Quai Maréchal Joffre, Melun",
  picture: "app/assets/images/3pierreperrin.JPG",
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

pictures11 = [
  'https://cvws.icloud-content.com/S/AX1VzZmTRj4MtC_lY7_wINARZJb6/20240616+triathlon+cannes-ecluse+0921+%C2%A9Alexis+Komenda.JPG?o=Ajh-wFedobhDni9xfyuhXwtzld6F38mXdTRU8WU4hQsE&v=1&z=https%3A%2F%2Fp47-content.icloud.com%3A443&x=1&a=CAogVHKI3uQ1GxcyVhsAJeFHI00Gn7K0FG2FpKuuIt9wplsSZxD_xv-gjjIY_92Spo4yIgEAUgQRZJb6aia-6yVRPyMVAMv750NF90dEK3Wvql6yJRA3LmMNIJ5u1Pt9rBSdUnImfuzuPEIodad8sFDT97tpERBGerbLSUS2pCIdfPVCbGBvXP1O8p4&e=1721825013&r=c452e7f6-00ac-49cd-89d8-664809b1b2cb-27&s=nmgMphKVJEAsc6g0PyF7SzSiSgg',
  'https://cvws.icloud-content.com/S/Ad7vlt7X_bJX_hR9oEdhV3u__tAJ/20240616+triathlon+cannes-ecluse+0958+%C2%A9Alexis+Komenda.JPG?o=AiR-rbv-wG-cCA5tsEwaC6YneEBaxdt6GiiSNT2zuX-8&v=1&z=https%3A%2F%2Fp47-content.icloud.com%3A443&x=1&a=CAogkifdSCbSrXRQUF2ha2_h398G7qtyErNTbG5u3qVhyZYSZxD_9IChjjIY_4uUpo4yIgEAUgS__tAJaiYLJFV538KzzNhaLQwyZxxUWv5C1Dulmf0BR03X-RyYejPFiUQs13ImXwNwEkYkO2l-BsXbAxNzFEd-ebhMhoe2BwLRZGVvHGZeqa0fEM4&e=1721825035&r=2854c5c7-2aab-4134-aec4-1941e6607b23-3&s=7GCzooXvEGM76Z33YAGZFAJtbzA',
  'https://dgtzuqphqg23d.cloudfront.net/WbrXEMGUNYeALkKdQc7mEN0-QKu4uwZgeICtCjg9n-s-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/jMGJMupNLK86SD7QYdaXhcyL4X0IjRauHC596uvR3eA-2048x1536.jpg',
  'https://dgtzuqphqg23d.cloudfront.net/LXuhjiPCtiyasKPifrLtNN_588lwvGEKg91LI_yvxOY-2048x1536.jpg'
]

pictures11.each do |picture|
  file = URI.open(picture)
  user11.photos.attach(io: file, filename: 'activity', content_type: 'image/jpg')
  user11.save
end

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
  address: "45 avenue Thiers, Melun",
  picture: "app/assets/images/3roxannepetit.jpg",
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
  address: "57 avenue Thiers, Melun",
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
