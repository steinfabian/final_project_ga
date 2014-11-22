require 'rails_helper'

RSpec.describe "customisations/index", :type => :view do
  before(:each) do
    assign(:customisations, [
      Customisation.create!(
        :product_id => 1,
        :part_id => 2,
        :print_id => 3,
        :style_id => 4
      ),
      Customisation.create!(
        :product_id => 1,
        :part_id => 2,
        :print_id => 3,
        :style_id => 4
      )
    ])
  end

  it "renders a list of customisations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
