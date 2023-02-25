# puts 'cleaning database'
# Answer.destroy_all
# puts 'Answer destroy'

# Task.destroy_all
# puts 'Task destroy'

# User.destroy_all
# puts 'User cleaned'

# # creating users
# puts 'creating user'
# user1 = User.create(email: 'test@gmail.com', password: '123456')
# puts 'user created'

# puts 'Creating questions...'
# question1 = Question.create!(content: "Un léger mal de gorge", user_id: user1.id)
# question2 = Question.create!(content: "Les yeux rouges", user_id: user1.id)
# question3 = Question.create!(content: "Mal à la tête", user_id: user1.id)
# question4 = Question.create!(content: "Trouble de sommeil", user_id: user1.id)
# question5 = Question.create!(content: "Gastro enterite", user_id: user1.id)
# question6 = Question.create!(content: "La sinusite aiguë ", user_id: user1.id)
# puts "Questions created"

# puts 'Creating answers...'
# answer1 = Answer.create!(content: "Sucez des pastilles disponibles en pharmacie ou tout simplement des bonbons", question_id: question1.id)
# answer2 = Answer.create!(content: "l'application de compresses d'eau chaude 3 fois par jour et l'utilisation de gouttes antiallergiques", question_id: question2.id)
# answer3 = Answer.create!(content: "Appliquez des compresses d'eau chaude 3 fois par jour et utilisez des gouttes antiallergiques", question_id: question3.id)
# answer4 = Answer.create!(content: "Penser à s’aménager des moments de pause durant la journée, ne pas la remplir uniquement de corvées.", question_id: question4.id)
# answer5 = Answer.create!(content: "Se laver les mains très régulièrement : avant chaque repas, après être allé aux toilettes", question_id: question5.id)
# answer6 = Answer.create!(content: "Dans la sinusite aiguë, le repos est conseillé, ainsi que l'administration d'analgésiques", question_id: question6.id)
# puts "Answers created"

# task1 = Task.create!(answer_id: answer1.id)
# puts "Task created"

# # puts 'Creating tasks...'
# # Answer.all.each do |answer|
# #   task = Task.create!(answer_id: answer.id)
# #   puts "Task created: #{task.id}"
# # end

# puts 'Finished.'
