require 'spec_helper'

describe "ads/new", :type => :view do
  before(:each) do
    assign(:ad, Ad.new(
      :ad => "MyString"
    ))
  end

  it "renders new ad form" do
    render

    assert_select "form[action=?][method=?]", ads_path, "post" do

      assert_select "input#ad_ad[name=?]", "ad[ad]"
    end
  end
end
