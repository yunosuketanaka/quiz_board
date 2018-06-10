FactoryBot.define do
  factory :q_option do
    question_id 2
    body "fujisan is the highest mountain in the world."
    is_correct 1

     # association :question,
     #   factory: :question,
     #   strategy: :build

  end

end
