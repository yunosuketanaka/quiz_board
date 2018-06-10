require 'rails_helper'

RSpec.describe Trial, type: :model do
  it 'is valid if users_quiz_id and started_at are not nil' do
    expect(build(:trial)).to be_valid
  end

  it 'is invalid if users_quiz_id is nil' do
    expect(build(:trial, user_quiz_id: nil)).to be_invalid
  end

  it 'is invalid if quiz_id is nil' do
    expect(build(:trial, started_at: nil)).to be_invalid
  end
end
