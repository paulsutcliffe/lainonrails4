require 'spec_helper'

describe "noticia/show", :type => :view do
  before(:each) do
    @noticium = assign(:noticium, Noticium.create!(
      :titulo => "Titulo",
      :subtitlo => "Subtitlo",
      :contenido => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Subtitlo/)
    expect(rendered).to match(/MyText/)
  end
end
