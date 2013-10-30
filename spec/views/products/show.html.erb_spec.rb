require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :shortcode => "Shortcode",
      :bid_price => "9.99",
      :final_price => "9.99",
      :intro => "MyText",
      :factory => "Factory",
      :spec => "Spec",
      :unit => "Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Shortcode/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/MyText/)
    rendered.should match(/Factory/)
    rendered.should match(/Spec/)
    rendered.should match(/Unit/)
  end
end
