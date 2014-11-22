require 'rails_helper'

RSpec.describe "products/new", :type => :view do
  before(:each) do
    assign(:product, Product.new(
      :kind => "MyString",
      :name => "MyString",
      :size => "MyString",
      :order_id => 1,
      :image => "MyText",
      :price => 1.5
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_kind[name=?]", "product[kind]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_size[name=?]", "product[size]"

      assert_select "input#product_order_id[name=?]", "product[order_id]"

      assert_select "textarea#product_image[name=?]", "product[image]"

      assert_select "input#product_price[name=?]", "product[price]"
    end
  end
end
