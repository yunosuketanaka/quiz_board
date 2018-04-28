require 'rails_helper'

RSpec.describe Admin, type: :model do
  # ok all with name, email, password
  it "is valid with a firstname and email" do
    expect(build(:admin)).to be_valid
  end

  # error without name
  it 'is invalid without a name' do
    admin = build(:admin, name: nil)
    # expect(admin).to be_valid
    admin.valid?
    expect(admin.errors[:name].size).to eq(1)
  end

  # error without email
  it 'is invalid without an email' do
    admin = build(:admin, email: nil)
    admin.valid?
    expect(admin.errors[:email].size).to eq(2)
  end

  # error without password
  it 'is invalid without an password' do
    admin = build(:admin, password: nil)
    admin.valid?
    expect(admin.errors[:password].present?).to eq true
    # admin.valid?
    # expect(admin.errors[:password].size).to eq(2)
  end

  # error if the email is already in the db
  it 'is invalid if email is duplicate' do
    create(:admin, email: "hoge@example.com")
    admin = build(:admin, email: "hoge@example.com")
    admin.valid?
    expect(admin.errors[:email].size).to eq(2)
  end

  # error if the password is fewer than 6 letters
  it 'is invalid if password is smaller than 6 letters' do
    admin = build(:admin, password: 'hogge')
    expect(admin).to be_invalid
    # admin.valid?
    # expect(admin.errors[:password].size).to eq(1)
  end

  # error if the password is longer than 14 letters
  it 'is invalid if password is longer than 14 letters' do
    admin = build(:admin, password: 'mogemogemogemog')
    admin.valid?
    expect(admin.errors[:password].size).to eq(1)
  end

  # error if the password is not the same with pass_confim
  it 'is invalid if the password is different from pass_confirm' do
    admin = build(:admin, password_confirmation: "mogemoge")
    expect(admin).to be_invalid
    # admin.valid?
    # expect(admin.errors[:password_confirmation].size).to eq(1)
  end

end
