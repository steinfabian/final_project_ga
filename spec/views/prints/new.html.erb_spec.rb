require 'rails_helper'

RSpec.describe "prints/new", :type => :view do
  before(:each) do
    assign(:print, Print.new(
      :name => "MyString",
      :thumbnail => "MyText",
      :image => "MyText"
    ))
  end

  it "renders new print form" do
    render

    assert_select "form[action=?][method=?]", prints_path, "post" do

      assert_select "input#print_name[name=?]", "print[name]"

      assert_select "textarea#print_thumbnail[name=?]", "print[thumbnail]"

      assert_select "textarea#print_image[name=?]", "print[image]"
    end
  end
end
