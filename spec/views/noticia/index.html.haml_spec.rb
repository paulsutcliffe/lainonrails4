require 'spec_helper'

describe "noticia/index", :type => :view do
  before(:each) do
    assign(:noticia, [
      Noticium.create!(
        :titulo => "Titulo",
        :subtitlo => "Subtitlo",
        :contenido => "MyText"
      ),
      Noticium.create!(
        :titulo => "Titulo",
        :subtitlo => "Subtitlo",
        :contenido => "MyText"
      )
    ])
  end

  it "renders a list of noticia" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Subtitlo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
