class QOption < ApplicationRecord
  belongs_to :question, optional: true
  validates :body, :question_id, :is_correct, presence: true
end
