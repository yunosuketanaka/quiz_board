FactoryBot.define do
  factory :admin do
    name "Yunosuke Tanaka"
    sequence(:email) { |n| "yunosuke.tanaka#{n}@gmail.com" }
    password "hogehoge"
  end
end
