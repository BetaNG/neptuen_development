require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :name => "MyString",
      :department => "MyString",
      :duty => "MyString",
      :age => 1,
      :sex => "MyString",
      :address => "MyString",
      :mobile => "MyString",
      :tel => "MyString",
      :email => "MyString",
      :tencent => "MyString",
      :idcard => "MyString",
      :hobby => "MyString",
      :nation => "MyString",
      :marital => false,
      :blood => "MyString",
      :height => 1,
      :weight => 1,
      :zodiac => "MyString",
      :school => "MyString",
      :science => "MyString",
      :note => "MyString"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacts_path, "post" do
      assert_select "input#contact_name[name=?]", "contact[name]"
      assert_select "input#contact_department[name=?]", "contact[department]"
      assert_select "input#contact_duty[name=?]", "contact[duty]"
      assert_select "input#contact_age[name=?]", "contact[age]"
      assert_select "input#contact_sex[name=?]", "contact[sex]"
      assert_select "input#contact_address[name=?]", "contact[address]"
      assert_select "input#contact_mobile[name=?]", "contact[mobile]"
      assert_select "input#contact_tel[name=?]", "contact[tel]"
      assert_select "input#contact_email[name=?]", "contact[email]"
      assert_select "input#contact_tencent[name=?]", "contact[tencent]"
      assert_select "input#contact_idcard[name=?]", "contact[idcard]"
      assert_select "input#contact_hobby[name=?]", "contact[hobby]"
      assert_select "input#contact_nation[name=?]", "contact[nation]"
      assert_select "input#contact_marital[name=?]", "contact[marital]"
      assert_select "input#contact_blood[name=?]", "contact[blood]"
      assert_select "input#contact_height[name=?]", "contact[height]"
      assert_select "input#contact_weight[name=?]", "contact[weight]"
      assert_select "input#contact_zodiac[name=?]", "contact[zodiac]"
      assert_select "input#contact_school[name=?]", "contact[school]"
      assert_select "input#contact_science[name=?]", "contact[science]"
      assert_select "input#contact_note[name=?]", "contact[note]"
    end
  end
end
