require 'spec_helper'

describe Computest, :type => :model do
  it "has a valid factory" do
    expect(build(:computest)).to be_valid
  end
end
