require 'spec_helper'

describe "noticia/edit", :type => :view do
  before(:each) do
    @noticium = assign(:noticium, Noticium.create!(
      :titulo => "MyString",
      :subtitlo => "MyString",
      :contenido => "MyText"
    ))
  end

  it "renders the edit noticium form" do
    render

    assert_select "form[action=?][method=?]", noticium_path(@noticium), "post" do

      assert_select "input#noticium_titulo[name=?]", "noticium[titulo]"

      assert_select "input#noticium_subtitlo[name=?]", "noticium[subtitlo]"

      assert_select "textarea#noticium_contenido[name=?]", "noticium[contenido]"
    end
  end
end
