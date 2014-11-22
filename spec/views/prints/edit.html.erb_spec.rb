require 'rails_helper'

RSpec.describe "prints/edit", :type => :view do
  before(:each) do
    @print = assign(:print, Print.create!(
      :name => "MyString",
      :thumbnail => "MyText",
      :image => "MyText"
    ))
  end

  it "renders the edit print form" do
    render

    assert_select "form[action=?][method=?]", print_path(@print), "post" do

      assert_select "input#print_name[name=?]", "print[name]"

      assert_select "textarea#print_thumbnail[name=?]", "print[thumbnail]"

      assert_select "textarea#print_image[name=?]", "print[image]"
    end
  end
end
