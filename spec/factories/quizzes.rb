FactoryBot.define do
  factory :quiz do
    sequence(:title) { |n| " hogehoge #{n}" }
    description 'mogemoge & hogehoge'
  end
end
