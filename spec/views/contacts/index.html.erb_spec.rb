require 'spec_helper'

describe "contacts/index" do
  before(:each) do
    assign(:contacts, [
      stub_model(Contact,
        :name => "Name",
        :department => "Department",
        :duty => "Duty",
        :age => 1,
        :sex => "Sex",
        :address => "Address",
        :mobile => "Mobile",
        :tel => "Tel",
        :email => "Email",
        :tencent => "Tencent",
        :idcard => "Idcard",
        :hobby => "Hobby",
        :nation => "Nation",
        :marital => false,
        :blood => "Blood",
        :height => 2,
        :weight => 3,
        :zodiac => "Zodiac",
        :school => "School",
        :science => "Science",
        :note => "Note"
      ),
      stub_model(Contact,
        :name => "Name",
        :department => "Department",
        :duty => "Duty",
        :age => 1,
        :sex => "Sex",
        :address => "Address",
        :mobile => "Mobile",
        :tel => "Tel",
        :email => "Email",
        :tencent => "Tencent",
        :idcard => "Idcard",
        :hobby => "Hobby",
        :nation => "Nation",
        :marital => false,
        :blood => "Blood",
        :height => 2,
        :weight => 3,
        :zodiac => "Zodiac",
        :school => "School",
        :science => "Science",
        :note => "Note"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Duty".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Tencent".to_s, :count => 2
    assert_select "tr>td", :text => "Idcard".to_s, :count => 2
    assert_select "tr>td", :text => "Hobby".to_s, :count => 2
    assert_select "tr>td", :text => "Nation".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Blood".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Zodiac".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Science".to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
