require 'rails_helper'

RSpec.describe "Astronauts", type: :request do
  describe "GET /astronauts" do
    it "works! (now write some real specs)" do
      get astronauts_path
      expect(response).to have_http_status(200)
    end
  end
end
