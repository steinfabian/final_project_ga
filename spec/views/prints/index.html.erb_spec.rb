require 'rails_helper'

RSpec.describe "prints/index", :type => :view do
  before(:each) do
    assign(:prints, [
      Print.create!(
        :name => "Name",
        :thumbnail => "MyText",
        :image => "MyText"
      ),
      Print.create!(
        :name => "Name",
        :thumbnail => "MyText",
        :image => "MyText"
      )
    ])
  end

  it "renders a list of prints" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
