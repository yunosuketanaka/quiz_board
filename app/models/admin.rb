class Admin < ApplicationRecord
  validates :name, :email, :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..12 }
  validates :password, confirmation: true
end
