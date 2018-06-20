FactoryBot.define do
  factory :quiz do
    id 1 
    sequence(:title) { |n| " hogehoge #{n}" }
    description 'mogemoge & hogehoge'
  end
end
