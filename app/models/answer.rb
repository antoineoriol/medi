class Answer < ApplicationRecord
  belongs_to :question
  has_many :tasks, dependent: :destroy
end
