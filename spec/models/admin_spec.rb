require 'rails_helper'

RSpec.describe Admin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  # ok all with name, email, password
  it "is valid with a firstname, email, and password" do
    expect(build(:admin)).to be_valid
  end

  # error without name
  it 'is invalid without a name' do
    admin = build(:admin, name: nil)
    admin.valid?
    expect(admin.errors[:name].size).to eq(1)
  end

  # error without email
  it 'is invalid without an email' do
    admin = build(:admin, email: nil)
    admin.valid?
    expect(admin.errors[:email].size).to eq(1)
  end

  # error without password
  it 'is invalid without an password' do
    admin = build(:admin, password: nil)
    admin.valid?
    expect(admin.errors[:password].size).to eq(1)
  end

  # error if the email is already in the db
  it 'is invalid if emils is duplicate' do
    create(:admin, email: "hoge@example.com")
    admin = build(:admin, email: "hoge@example.com")
    admin.valid?
    expect(admin.errors[:email].size).to eq(1)
  end

  # error if the password is fewer than 6 letters
  it 'is invalid if password is smaller than 6 letters' do
    admin = build(:admin, password: 'hogge')
    admin.valid?
    expect(admin.errors[:password].size).to eq(1)
  end

  # error if the password is longer than 14 letters
  it 'is invalid if password is longer than 14 letters' do
    admin = build(:admin, password: 'mogemogemogemog')
    admin.valid?
    expect(admin.errors[:password].size).to eq(1)
  end

end
