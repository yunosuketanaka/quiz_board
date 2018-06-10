class Question < ApplicationRecord
  belongs_to :quiz, optional: true
  validates :title, :explanation, :body, presence: true
  validates :title, uniqueness: true
end
