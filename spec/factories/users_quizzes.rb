FactoryBot.define do

  factory :users_quiz do
    id 1
    user_id 1
    quiz_id 1

    association :user,
      factory: :user,
      strategy: :build

    association :quiz,
      factory: :quiz,
      strategy: :build


  end

end
