require 'rails_helper'

RSpec.describe "styles/show", :type => :view do
  before(:each) do
    @style = assign(:style, Style.create!(
      :name => "Name",
      :price => 1.5,
      :thumbnail => "MyText",
      :image => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
