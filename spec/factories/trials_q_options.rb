FactoryBot.define do

  factory :trials_q_option do
    id 1
    trial_id 1
    secence(:q_option_id) {|n| "#{n}"} 

    association :trial,
      factory: :trial,
      strategy: :build

    association :q_option,
      factory: :q_option,
      strategy: :build
  end

end
