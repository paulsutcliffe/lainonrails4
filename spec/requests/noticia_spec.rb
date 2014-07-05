require 'spec_helper'

describe "Noticia", :type => :request do
  describe "GET /noticia" do
    it "works! (now write some real specs)" do
      get noticia_path
      expect(response.status).to be(200)
    end
  end
end
