FactoryBot.define do

  factory :trials_q_option do
    id 1
    trial_id 1
    q_option_id 1

    association :trial,
      factory: :trial,
      strategy: :build

    association :q_option,
      factory: :q_option,
      strategy: :build
  end

end
