require 'rails_helper'

RSpec.describe Quiz, type: :model do
  # valid if the title and description are both not nil
  it 'is valid if the title and description are both not nil' do
    expect(build(:quiz)).to be_valid
  end

  # invalid if the title is nil
  it 'is invalid if the title is nil' do
    quiz = build(:quiz, title: nil)
    quiz.valid?
    expect(quiz.errors[:title].size).to eq(1)
  end

  # invalid if the description is nil
  it 'is invalid if the description is nil' do
    expect(build(:quiz, description: nil)).to be_invalid
  end

  # invalid if the title is already registered
  it 'is invalid if the title is already registered' do
    create(:quiz, title: "first quiz")
    expect(build(:quiz, title: "first quiz")).to be_invalid
  end
end
