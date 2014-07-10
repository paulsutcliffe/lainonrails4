require 'spec_helper'

describe Opportunity, :type => :model do
  it "has a valid factory" do
    expect(build(:opportunity)).to be_valid
  end
end
