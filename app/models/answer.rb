class Answer < ApplicationRecord
  belongs_to :questions
  has_many :tasks
end
