require 'spec_helper'

describe "Ads", :type => :request do
  describe "GET /ads" do
    it "works! (now write some real specs)" do
      get ads_path
      expect(response.status).to be(200)
    end
  end
end
