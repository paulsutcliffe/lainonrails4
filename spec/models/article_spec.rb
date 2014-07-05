require 'spec_helper'

describe Article, :type => :model do
  it "has a valid factory" do
    expect(build(:article)).to be_valid
  end
end
