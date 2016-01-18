require 'rails_helper'

RSpec.describe "astronauts/edit", type: :view do
  before(:each) do
    @astronaut = assign(:astronaut, Astronaut.create!(
      :name => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders the edit astronaut form" do
    render

    assert_select "form[action=?][method=?]", astronaut_path(@astronaut), "post" do

      assert_select "input#astronaut_name[name=?]", "astronaut[name]"

      assert_select "input#astronaut_image_url[name=?]", "astronaut[image_url]"
    end
  end
end
