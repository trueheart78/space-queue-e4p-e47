require 'rails_helper'

RSpec.describe "astronauts/index", type: :view do
  before(:each) do
    assign(:astronauts, [
      Astronaut.create!(
        :name => "Name",
        :image_url => "Image Url"
      ),
      Astronaut.create!(
        :name => "Name",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of astronauts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
