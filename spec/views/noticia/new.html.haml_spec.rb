require 'spec_helper'

describe "noticia/new", :type => :view do
  before(:each) do
    assign(:noticium, Noticium.new(
      :titulo => "MyString",
      :subtitlo => "MyString",
      :contenido => "MyText"
    ))
  end

  it "renders new noticium form" do
    render

    assert_select "form[action=?][method=?]", noticia_path, "post" do

      assert_select "input#noticium_titulo[name=?]", "noticium[titulo]"

      assert_select "input#noticium_subtitlo[name=?]", "noticium[subtitlo]"

      assert_select "textarea#noticium_contenido[name=?]", "noticium[contenido]"
    end
  end
end
