class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..12 }
  validates :password, confirmation: true
end
