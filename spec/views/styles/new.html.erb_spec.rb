require 'rails_helper'

RSpec.describe "styles/new", :type => :view do
  before(:each) do
    assign(:style, Style.new(
      :name => "MyString",
      :price => 1.5,
      :thumbnail => "MyText",
      :image => "MyText"
    ))
  end

  it "renders new style form" do
    render

    assert_select "form[action=?][method=?]", styles_path, "post" do

      assert_select "input#style_name[name=?]", "style[name]"

      assert_select "input#style_price[name=?]", "style[price]"

      assert_select "textarea#style_thumbnail[name=?]", "style[thumbnail]"

      assert_select "textarea#style_image[name=?]", "style[image]"
    end
  end
end
