require 'rails_helper'

RSpec.describe "customers/show", :type => :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :email => "Email",
      :password_digest => "Password Digest",
      :first_name => "First Name",
      :last_name => "Last Name",
      :address => "Address",
      :timestamps => "Timestamps"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Timestamps/)
  end
end
