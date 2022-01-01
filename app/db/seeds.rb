# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development?
  admin = User.create(email: "admin@daily.com", password: "password")
  Activity.create(
    name: "Eat",
    description: "Do this or bad things will happen.",
    start_date: DateTime.current.beginning_of_day,
    end_date: DateTime.current.midnight + 364.days,
    user: admin,
  )
end
