require 'spec_helper'

describe Office, :type => :model do
  it "has a valid factory" do
    expect(build(:office)).to be_valid
  end
end
