require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Department/)
    rendered.should match(/Duty/)
    rendered.should match(/1/)
    rendered.should match(/Sex/)
    rendered.should match(/Address/)
    rendered.should match(/Mobile/)
    rendered.should match(/Tel/)
    rendered.should match(/Email/)
    rendered.should match(/Tencent/)
    rendered.should match(/Idcard/)
    rendered.should match(/Hobby/)
    rendered.should match(/Nation/)
    rendered.should match(/false/)
    rendered.should match(/Blood/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Zodiac/)
    rendered.should match(/School/)
    rendered.should match(/Science/)
    rendered.should match(/Note/)
  end
end
