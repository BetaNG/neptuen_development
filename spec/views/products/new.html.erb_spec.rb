require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :shortcode => "MyString",
      :bid_price => "9.99",
      :final_price => "9.99",
      :intro => "MyText",
      :factory => "MyString",
      :spec => "MyString",
      :unit => "MyString"
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "input#product_shortcode[name=?]", "product[shortcode]"
      assert_select "input#product_bid_price[name=?]", "product[bid_price]"
      assert_select "input#product_final_price[name=?]", "product[final_price]"
      assert_select "textarea#product_intro[name=?]", "product[intro]"
      assert_select "input#product_factory[name=?]", "product[factory]"
      assert_select "input#product_spec[name=?]", "product[spec]"
      assert_select "input#product_unit[name=?]", "product[unit]"
    end
  end
end
