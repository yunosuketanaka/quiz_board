FactoryBot.define do
  factory :q_option do
    sequence(:id) { |n| "#{n}"}
    question_id 1
    sequence(:body) {|n|   "#{4 * n - 1} fujisan is the highest mountain in the world."}
    sequence(:is_correct) {|n| "#{
      if n % 4 != 0 then
        return 1
      else
        return 0
      end
    }
    "}

     association :question,
       factory: :question,
       strategy: :build

  end

end
