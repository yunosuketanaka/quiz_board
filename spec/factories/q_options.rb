FactoryBot.define do
  factory :q_option do
    sequence(:id) { |n| "#{n}"}
    question_id 1
    body "fujisan is the highest mountain in the world."
    is_correct 1

     association :question,
       factory: :question,
       strategy: :build

  end

end
