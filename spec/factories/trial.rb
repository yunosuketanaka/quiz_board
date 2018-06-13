require 'date'


FactoryBot.define do

  factory :trial do
    user_quiz_id 1
    score 10
    started_at Time.now
    ended_at Time.now + 1000
  end

end
