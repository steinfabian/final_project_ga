require 'rails_helper'

RSpec.describe "prints/show", :type => :view do
  before(:each) do
    @print = assign(:print, Print.create!(
      :name => "Name",
      :thumbnail => "MyText",
      :image => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
