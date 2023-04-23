# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Doctor.destroy_all
Pet.destroy_all

10.times do
  Doctor.create!(
    name: Faker::Name.name,
    speciality: ["dermatolgist", "cardiolgist", "gastrolgist", "gp"].sample,
    available: [true,false].sample
  )

  Pet.create!(
    name: Faker::FunnyName.name,
    species: ["dog", "cat", "turtle", "rabbit", "mouse"].sample,
  )
end
