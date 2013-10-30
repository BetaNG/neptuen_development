require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :name => "MyString",
      :grade => "MyString",
      :tel => "MyString",
      :website => "MyString",
      :address => "MyString",
      :employee => 1,
      :turnover => "9.99",
      :intro => "MyText"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_name[name=?]", "client[name]"
      assert_select "input#client_grade[name=?]", "client[grade]"
      assert_select "input#client_tel[name=?]", "client[tel]"
      assert_select "input#client_website[name=?]", "client[website]"
      assert_select "input#client_address[name=?]", "client[address]"
      assert_select "input#client_employee[name=?]", "client[employee]"
      assert_select "input#client_turnover[name=?]", "client[turnover]"
      assert_select "textarea#client_intro[name=?]", "client[intro]"
    end
  end
end
