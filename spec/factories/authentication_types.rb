# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication_type do
    provider "MyString"
    enable false
  end
end
