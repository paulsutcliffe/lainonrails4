require 'spec_helper'

describe "ads/edit", :type => :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :ad => "MyString"
    ))
  end

  it "renders the edit ad form" do
    render

    assert_select "form[action=?][method=?]", ad_path(@ad), "post" do

      assert_select "input#ad_ad[name=?]", "ad[ad]"
    end
  end
end
