require 'rails_helper'

RSpec.describe "customisations/new", :type => :view do
  before(:each) do
    assign(:customisation, Customisation.new(
      :product_id => 1,
      :part_id => 1,
      :print_id => 1,
      :style_id => 1
    ))
  end

  it "renders new customisation form" do
    render

    assert_select "form[action=?][method=?]", customisations_path, "post" do

      assert_select "input#customisation_product_id[name=?]", "customisation[product_id]"

      assert_select "input#customisation_part_id[name=?]", "customisation[part_id]"

      assert_select "input#customisation_print_id[name=?]", "customisation[print_id]"

      assert_select "input#customisation_style_id[name=?]", "customisation[style_id]"
    end
  end
end
