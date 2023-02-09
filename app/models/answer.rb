class Answer < ApplicationRecord
  validates :content, presence: true

  belongs_to :question
  has_many :tasks, dependent: :destroy
end
