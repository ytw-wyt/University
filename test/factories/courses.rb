FactoryBot.define do
  factory :course do
    name { "IS Mileux" }
    unit_prefix { 67 }
    number { 250 }
    units { 9 }
    active { true }
  end
end
