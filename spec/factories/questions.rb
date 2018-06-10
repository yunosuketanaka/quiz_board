FactoryBot.define do

  factory :question do
    quiz_id 11
    title "hogehoge or mogemoge"
    body "which do you think is better for your health?"
    explanation "hogehoge is appearlently suitable for your health in longer terms."

    association :quiz,
      factory: :quiz,
      strategy: :build

  end

end
