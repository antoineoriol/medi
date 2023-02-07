puts 'cleaning database'
Answer.destroy_all
puts 'Answer destroy'

Task.destroy_all
puts 'Task destroy'

User.destroy_all
puts 'User cleaned'

# creating users
puts 'creating user'
user1 = User.create(email: 'test@gmail.com', password: '123456')
puts 'user created'

question1 = Question.create!(content: "J'ai mal a la tete", user_id: user1.id)
puts "Question created"

answer1 = Answer.create!(content: "Boire de l'eau", question_id: question1.id)
puts "Answer created"

task1 = Task.create!(answer_id: answer1.id)
puts "Task created"
