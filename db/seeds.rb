User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             faworit_food:          "pizza",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  faworit_food = "pizza"
  User.create!(name:  name,
               email: email,
               faworit_food: "pizza",
               password:              password,
               password_confirmation: password)
end
