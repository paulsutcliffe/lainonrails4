require 'spec_helper'

describe Testimony, :type => :model do
  it "has a valid factory" do
    expect(build(:testimony)).to be_valid
  end
end
