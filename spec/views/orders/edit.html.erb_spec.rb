require 'rails_helper'

RSpec.describe "orders/edit", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :customer_id => 1,
      :status => "MyString",
      :total_price => 1.5,
      :timestamps => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_customer_id[name=?]", "order[customer_id]"

      assert_select "input#order_status[name=?]", "order[status]"

      assert_select "input#order_total_price[name=?]", "order[total_price]"

      assert_select "input#order_timestamps[name=?]", "order[timestamps]"
    end
  end
end
