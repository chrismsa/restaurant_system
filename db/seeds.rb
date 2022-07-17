# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

foods = [
  {
    name: 'Galinhada',
    options: [
      'Com molho especial',
      'Sem sal'
    ]
  },
  {
    name: 'Feijoada',
    options: [
      'Com bacon',
      'Sem linguiça',
      'Com batata'
    ]
  }
]

Food.create!(foods)

events = [
  {
    name: 'Galinhada da igreja do tio zé',
    foods: Food.where(name: 'Galinhada')
  },
  {
    name: 'Feijoada de final de semana',
    foods: Food.where(name: 'Feijoada')
  },
  {
    name: 'Feijoada e Galinhada do festival de algo',
    foods: Food.where(name: ['Feijoada', 'Galinhada'])
  }
]

Event.create!(events)
