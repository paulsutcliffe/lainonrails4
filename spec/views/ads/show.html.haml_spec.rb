require 'spec_helper'

describe "ads/show", :type => :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :ad => "Ad"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ad/)
  end
end
