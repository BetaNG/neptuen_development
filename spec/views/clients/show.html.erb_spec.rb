require 'spec_helper'

describe "clients/show" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :name => "Name",
      :grade => "Grade",
      :tel => "Tel",
      :website => "Website",
      :address => "Address",
      :employee => 1,
      :turnover => "9.99",
      :intro => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Grade/)
    rendered.should match(/Tel/)
    rendered.should match(/Website/)
    rendered.should match(/Address/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/MyText/)
  end
end
