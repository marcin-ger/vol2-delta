10.times do
  User.create(email: Faker::Internet.email,
              password: 'password',
              password_confirmation: 'password')
end

puts '10 Users created!'

10.times do
  Crag.create(name: Faker::Address.city,
              country: Faker::Address.country,
              x: rand,
              y: rand
            )
end
puts '10 Crags created!'

10.times do
  Sector.create(
    name: Faker::BossaNova.song,
    aspect: Faker::Cat.breed,
    latitude: rand(1..100),
    longitude: rand,
    crag_id: rand(10)
  )
end
puts '10 sectors created'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AscentStyle.create(style: 'RP', points: 0)
AscentStyle.create(style: 'OS', points: 150)
AscentStyle.create(style: 'FL', points: 50)

puts '3 ascent style created'

RouteGrade.create(grade: '6a', points: 100)
RouteGrade.create(grade: '6a+', points: 150)
RouteGrade.create(grade: '6b', points: 200)
RouteGrade.create(grade: '6b+', points: 250)
RouteGrade.create(grade: '6c', points: 300)
RouteGrade.create(grade: '6c+', points: 350)
RouteGrade.create(grade: '7a', points: 400)
RouteGrade.create(grade: '7a+', points: 450)
RouteGrade.create(grade: '7b', points: 500)
RouteGrade.create(grade: '7b+', points: 550)
RouteGrade.create(grade: '7c', points: 600)
RouteGrade.create(grade: '7c+', points: 650)
RouteGrade.create(grade: '8a', points: 700)
RouteGrade.create(grade: '8a+', points: 750)
RouteGrade.create(grade: '8b', points: 800)
RouteGrade.create(grade: '8b+', points: 850)
RouteGrade.create(grade: '8c', points: 950)
RouteGrade.create(grade: '8c+', points: 1000)
RouteGrade.create(grade: '9a', points: 1050)
RouteGrade.create(grade: '9a+', points: 1100)
RouteGrade.create(grade: '9b', points: 1150)
RouteGrade.create(grade: '9b+', points: 1200)
RouteGrade.create(grade: '9c', points: 1250)

puts 'grading system created'
