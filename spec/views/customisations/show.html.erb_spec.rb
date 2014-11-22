require 'rails_helper'

RSpec.describe "customisations/show", :type => :view do
  before(:each) do
    @customisation = assign(:customisation, Customisation.create!(
      :product_id => 1,
      :part_id => 2,
      :print_id => 3,
      :style_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
