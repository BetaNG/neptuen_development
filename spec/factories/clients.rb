# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "MyString"
    grade "MyString"
    tel "MyString"
    website "MyString"
    address "MyString"
    employee 1
    turnover "9.99"
    intro "MyText"
  end
end
