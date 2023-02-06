
User.destroy_all
Question.destroy_all
Answer.destroy_all

users.each do |user|
  put "creating question..."
  questions.sample(1).each do |question|
    put "creating answer..."
    answers.sample(1).each do |answer|
      put "creating task..."
      tasks.sample(1).each do |task|
        put "Finished!"
      end
    end
  end
end


put "Creating 3 users..."
users = User.create!([
  { email: "gueye.tamsir@gmail.com", password: "123456" },
  { email: "gueye.tamsir1@gmail.com", password: "123456" },
  { email: "gueye.tamsir2@gmail.com", password: "123456" },
])
put "Finished!"


questions = Question.create!([
  { content: "j'ai mal a la tete?", user_id: user.id },
  { content: "j'ai mal au ventre ?", user_id: user.id },
  { content: "j'ai mal au cul?", user_id: user.id },
  { content: "j'ai les yeux tout rouge?", user_id: user.id },
  ])
  put "Finished!"

  put "Creating 4 answers..."
  answers = Answer.create!([
    { content: "oui", question_id: questions.users_id },
    { content: "oui", question_id: questions.users_id },
    { content: "non", question_id: questions.users_id },
    { content: "oui", question_id: 4questions.users_id},
    ])
    put "Finished!"


    put "Creating 4 tasks..."
    tasks = Task.create!([
      { content: "aller voir le medecin", answer_id: answers.question_id },
      { content: "aller boire de l'eau", answer_id: answers.question_id},
      { content: "aller dormir 5heures", answer_id: answers.question_id },
      { content: "aller marcher 2KM", answer_id: answers.question_id},
      ])
      put "Finished!"
