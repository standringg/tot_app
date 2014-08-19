namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    4.times do |n|
      admin_name = "Admin-#{n+1}"
      email = "standringg-#{n+1}@gmail.com"
      password = "55Aedge"
      User.create!(user_name: admin_name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   admin: true)
    end

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(user_name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end

    desc "Add admin user to database"
    task populate_admin: :environment do
      admin_name = "George"
      email = "standring@gmail.com"
      password = "55Aedge"
      User.create!(user_name: admin_name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   admin: true)
  end
end