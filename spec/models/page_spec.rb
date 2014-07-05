require 'spec_helper'

describe Page, :type => :model do
  it "has a valid factory" do
    expect(build(:page)).to be_valid
  end
end
