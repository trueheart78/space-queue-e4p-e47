require 'rails_helper'

RSpec.describe "astronauts/show", type: :view do
  before(:each) do
    @astronaut = assign(:astronaut, Astronaut.create!(
      :name => "Name",
      :image_url => "Image Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image Url/)
  end
end
