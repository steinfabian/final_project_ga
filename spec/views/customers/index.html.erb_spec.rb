require 'rails_helper'

RSpec.describe "customers/index", :type => :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :email => "Email",
        :password_digest => "Password Digest",
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :timestamps => "Timestamps"
      ),
      Customer.create!(
        :email => "Email",
        :password_digest => "Password Digest",
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :timestamps => "Timestamps"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Timestamps".to_s, :count => 2
  end
end
