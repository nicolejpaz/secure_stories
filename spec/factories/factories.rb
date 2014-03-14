require 'faker'

FactoryGirl.define do
  factory :writing do
    name Faker::Lorem.words.join(' ')
  end
end