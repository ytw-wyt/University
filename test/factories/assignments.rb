FactoryBot.define do
  factory :assignment do
    association :course
    association :faculty
  end
end
