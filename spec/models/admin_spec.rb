require 'rails_helper'

RSpec.describe Admin, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  # ok all with name, email, password
  it "is valid with a firstname, email, and password" do
    expect(build(:admin)).to be_valid
  end

  # error without name
  # error without email
  # error without password
  # error if the email is already in the db
  # error if the password 2 is different from pass 1


end
