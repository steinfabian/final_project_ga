require 'rails_helper'

RSpec.describe "parts/index", :type => :view do
  before(:each) do
    assign(:parts, [
      Part.create!(
        :name => "Name"
      ),
      Part.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of parts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
