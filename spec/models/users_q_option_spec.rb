require 'rails_helper'

RSpec.describe UsersQOption, type: :model do
  it 'is valid if user_id and q_optio_id are not nil' do
    expect(build(:users_q_option)).to be_valid
  end

  it 'is invalid if user_id is nil' do
    expect(build(:users_q_option, user_id: nil)).to be_invalid
  end

  it 'is invalid if q_option_id is nil' do
    expect(build(:users_q_option, q_option_id: nil)).to be_invalid
  end
end
