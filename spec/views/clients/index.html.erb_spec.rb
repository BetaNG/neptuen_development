require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :name => "Name",
        :grade => "Grade",
        :tel => "Tel",
        :website => "Website",
        :address => "Address",
        :employee => 1,
        :turnover => "9.99",
        :intro => "MyText"
      ),
      stub_model(Client,
        :name => "Name",
        :grade => "Grade",
        :tel => "Tel",
        :website => "Website",
        :address => "Address",
        :employee => 1,
        :turnover => "9.99",
        :intro => "MyText"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
