require 'spec_helper'

describe Country, :type => :model do
  it "has a valid factory" do
    expect(build(:country)).to be_valid
  end
end
