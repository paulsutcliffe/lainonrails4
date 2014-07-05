require 'spec_helper'

describe Subscriber, :type => :model do
  it "has a valid factory" do
    expect(build(:subscriber)).to be_valid
  end
end
