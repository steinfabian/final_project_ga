require 'rails_helper'

RSpec.describe "orders/index", :type => :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :customer_id => 1,
        :status => "Status",
        :total_price => 1.5,
        :timestamps => "Timestamps"
      ),
      Order.create!(
        :customer_id => 1,
        :status => "Status",
        :total_price => 1.5,
        :timestamps => "Timestamps"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Timestamps".to_s, :count => 2
  end
end
