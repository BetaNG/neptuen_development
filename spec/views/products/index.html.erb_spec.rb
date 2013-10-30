require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :shortcode => "Shortcode",
        :bid_price => "9.99",
        :final_price => "9.99",
        :intro => "MyText",
        :factory => "Factory",
        :spec => "Spec",
        :unit => "Unit"
      ),
      stub_model(Product,
        :name => "Name",
        :shortcode => "Shortcode",
        :bid_price => "9.99",
        :final_price => "9.99",
        :intro => "MyText",
        :factory => "Factory",
        :spec => "Spec",
        :unit => "Unit"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Shortcode".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Factory".to_s, :count => 2
    assert_select "tr>td", :text => "Spec".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
  end
end
