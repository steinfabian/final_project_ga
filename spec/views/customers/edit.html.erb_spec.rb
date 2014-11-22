require 'rails_helper'

RSpec.describe "customers/edit", :type => :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :email => "MyString",
      :password_digest => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :timestamps => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_password_digest[name=?]", "customer[password_digest]"

      assert_select "input#customer_first_name[name=?]", "customer[first_name]"

      assert_select "input#customer_last_name[name=?]", "customer[last_name]"

      assert_select "input#customer_address[name=?]", "customer[address]"

      assert_select "input#customer_timestamps[name=?]", "customer[timestamps]"
    end
  end
end
