class Question < ApplicationRecord
  belongs_to :quiz, optional: true
  has_many :q_options
  validates :title, :explanation, :body, presence: true
  validates :title, uniqueness: true
end
