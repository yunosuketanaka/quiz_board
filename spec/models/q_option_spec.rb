require 'rails_helper'

RSpec.describe QOption, type: :model do
  # before :each do
  #   create(:quiz)
  #   create(:question)
  # end
  # subject(:quiz) { create(:quiz) }

  it 'is valid if question_id, body, is_correct are not nil' do
    # subject
    expect(build(:q_option)).to be_valid
  end


  it 'is invaild if question_id is nil' do
    # subject
    expect(build(:q_option, question_id: nil)).to be_invalid
  end

  it 'is invalid if body is nil' do
    # subject
    expect(build(:q_option, body: nil)).to be_invalid
  end

  it 'is invalid if is_correct is nil' do
    # subject
    expect(build(:q_option, is_correct: nil)).to be_invalid
  end
end
