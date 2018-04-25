class Admin < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..12 }
end
