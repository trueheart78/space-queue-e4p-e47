require 'rails_helper'

RSpec.describe "astronauts/new", type: :view do
  before(:each) do
    assign(:astronaut, Astronaut.new(
      :name => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders new astronaut form" do
    render

    assert_select "form[action=?][method=?]", astronauts_path, "post" do

      assert_select "input#astronaut_name[name=?]", "astronaut[name]"

      assert_select "input#astronaut_image_url[name=?]", "astronaut[image_url]"
    end
  end
end
