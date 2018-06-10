class UsersQOption < ApplicationRecord
  validates :user_id, :q_option_id, presence: true
end
