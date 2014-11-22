require 'rails_helper'

RSpec.describe "parts/show", :type => :view do
  before(:each) do
    @part = assign(:part, Part.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
