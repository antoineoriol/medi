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
Question.destroy_all
User.destroy_all
puts 'database cleaned'

# creating users

user = User.create!(email: "antoine@gmail.com", password: "123456789")

question_sets = [
  {
    content: "mal de gorge, fièvre et fatigue"
  }, {
    content: "mal à la tête, vomissement"
  }, {
    content: "mal à la jambe, éternuements"
  }]

question_sets.each do |question|
  question_list = []
  question_1 = Question.create!(content: question[:content], user: user)
  question_1 >> question_list
  question_list.each do |answer|
    answer_list = []
    answer_1 = Answer.create!(question_id: question[:id], content: "blabla")
    answer_1 >> answer_list
  end
end

puts question_list
puts answer_list
