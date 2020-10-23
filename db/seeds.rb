# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cadastrando as Refeições'

meals = Meal.create(
  [
    {
      description: 'Café da Manhã'
    },
    {
      description: 'Ceia da Manhã'
    },
    {
      description: 'Almoço'
    },
    {
      description: 'Ceia da Tarde'
    },
    {
      description: 'Janta'
    },
    {
      description: 'Ceia da Noite'
    }
  ]
)

puts "Foram cadastradas as seguites refeicoes #{ meals }"

puts '---------------------------------------------------'

puts 'Cadastrando as Usuarios'

users = User.create(
  [
    {
      name: 'Daniel Jonas Alves Matos',
      email: 'danielmatos404@gmail.com',
      password: '123456',
      password_confirmation: '123456',
    }
  ]
)

puts "Foram cadastrado o seguinte usuário #{ users }"

puts '---------------------------------------------------'

