# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# cleaning DB
puts 'cleaning database'
Answer.destroy_all
puts 'database cleaned'

# creating users
puts 'creating user'
user1 = User.create(email: 'etest2@test.com', password: 'azerty')
puts 'creating question'
question1 = Question.create(user: user1, content: "Qui es-tu ?")
puts 'question created'

# creating answer
answer = Answer.new
answer.content = "Hello world"
answer.question_id = question1.id
answer.save!
