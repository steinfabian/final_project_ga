require 'rails_helper'

RSpec.describe "products/index", :type => :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :kind => "Kind",
        :name => "Name",
        :size => "Size",
        :order_id => 1,
        :image => "MyText",
        :price => 1.5
      ),
      Product.create!(
        :kind => "Kind",
        :name => "Name",
        :size => "Size",
        :order_id => 1,
        :image => "MyText",
        :price => 1.5
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
