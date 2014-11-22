require 'rails_helper'

RSpec.describe "parts/edit", :type => :view do
  before(:each) do
    @part = assign(:part, Part.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit part form" do
    render

    assert_select "form[action=?][method=?]", part_path(@part), "post" do

      assert_select "input#part_name[name=?]", "part[name]"
    end
  end
end
