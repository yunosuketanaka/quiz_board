class UsersQuiz < ApplicationRecord
  validates :user_id, :quiz_id, presence: true
end
