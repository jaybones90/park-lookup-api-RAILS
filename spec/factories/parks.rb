require 'faker'

FactoryGirl.define do
  factory :park do
    name Faker::Space.galaxy
    city Faker::Address.city
    state Faker::Address.state
    category "National 123"
  end
end
