FactoryBot.define do
  factory :admin do
    name "Yunosuke Tanaka"
    sequence(:email) { |n| "yunosuke.tanaka#{n}@gmail.com" }
  end
end
