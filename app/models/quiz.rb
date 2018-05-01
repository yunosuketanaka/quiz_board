class Quiz < ApplicationRecord
  has_many :questions
  validates :title, :description, presence: true
  validates :title, uniqueness: true
end
