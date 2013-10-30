# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    shortcode "MyString"
    bid_price "9.99"
    final_price "9.99"
    intro "MyText"
    factory "MyString"
    spec "MyString"
    unit "MyString"
  end
end
