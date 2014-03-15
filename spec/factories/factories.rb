require 'faker'

FactoryGirl.define do
  factory :story do
    name Faker::Lorem.words.join(' ')
  end
end