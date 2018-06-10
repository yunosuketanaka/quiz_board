class Trial < ApplicationRecord
  validates :user_quiz_id, :started_at, presence: true
end
