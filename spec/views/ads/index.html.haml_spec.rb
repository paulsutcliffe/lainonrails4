require 'spec_helper'

describe "ads/index", :type => :view do
  before(:each) do
    assign(:ads, [
      Ad.create!(
        :ad => "Ad"
      ),
      Ad.create!(
        :ad => "Ad"
      )
    ])
  end

  it "renders a list of ads" do
    render
    assert_select "tr>td", :text => "Ad".to_s, :count => 2
  end
end
