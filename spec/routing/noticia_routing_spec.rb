require "spec_helper"

describe NoticiaController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/noticia").to route_to("noticia#index")
    end

    it "routes to #new" do
      expect(:get => "/noticia/new").to route_to("noticia#new")
    end

    it "routes to #show" do
      expect(:get => "/noticia/1").to route_to("noticia#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/noticia/1/edit").to route_to("noticia#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/noticia").to route_to("noticia#create")
    end

    it "routes to #update" do
      expect(:put => "/noticia/1").to route_to("noticia#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/noticia/1").to route_to("noticia#destroy", :id => "1")
    end

  end
end
