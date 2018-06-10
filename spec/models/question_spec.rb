require 'rails_helper'

RSpec.describe Question, type: :model do
    # id is unique
    it 'is invalid if id is not unique' do
      create(:question, title: "same")
      question = build(:question, title: "same")
      question.valid?
      expect(question.errors[:title].size).to eq(1)
    end
    # id, title, body, explanation are not nil
    it 'is valid if title, id , body, and explanation are not nil' do
      expect(build(:question)).to be_valid
    end
    # title is not nil
    it 'is invaild if title is nil' do
      expect(build(:question, title: nil)).to be_invalid
    end
    # body is not nil
    it 'is invalid if body is nil' do
      expect(build(:question, body: nil)).to be_invalid
    end
    # explanation is not nil
    it 'is invalid if explanatino is nil' do
      expect(build(:question, explanation: nil)).to be_invalid
    end

end
