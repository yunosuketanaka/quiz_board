require 'rails_helper'

RSpec.describe UsersQuiz, type: :model do
  it 'is valid if user_id and quiz_id are not nil' do
    expect(build(:users_quiz)).to be_valid
  end

  it 'is invalid if user_id is nil' do
    expect(build(:users_quiz, user_id: nil)).to be_invalid
  end

  it 'is invalid if quiz_id is nil' do
    expect(build(:users_quiz, quiz_id: nil)).to be_invalid
  end
end
